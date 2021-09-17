import 'dart:io';
import 'dart:isolate';

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:moor/ffi.dart';
import 'package:moor/isolate.dart';
import 'package:moor/moor.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

import '../utils/const.dart';
import 'user/user.dart';
import 'user/user_dao.dart';

part 'moor_database.g.dart';

Future<MoorIsolate> _createMoorIsolate() async {
  // this method is called from the main isolate. Since we can't use
  // getApplicationDocumentsDirectory on a background isolate, we calculate
  // the database path in the foreground isolate and then inform the
  // background isolate about the path.
  final dbFolder = await getApplicationDocumentsDirectory();
  final path = p.join(dbFolder.path, DatabaseName.dbName);
  final receivePort = ReceivePort();
  Logger().d('dbPath: $path');
  await Isolate.spawn(
    _startBackground,
    _IsolateStartRequest(receivePort.sendPort, path),
  );

  // _startBackground will send the MoorIsolate to this ReceivePort
  return await receivePort.first as MoorIsolate;
}

void _startBackground(_IsolateStartRequest request) {
  // this is the entry point from the background isolate! Let's create
  // the database from the path we received
  final executor =
      VmDatabase(File(request.targetPath), logStatements: !kReleaseMode);
  // we're using MoorIsolate.inCurrent here as this method already runs on a
  // background isolate. If we used MoorIsolate.spawn, a third isolate would be
  // started which is not what we want!
  final moorIsolate = MoorIsolate.inCurrent(
    () => DatabaseConnection.fromExecutor(executor),
  );
  // inform the starting isolate about this, so that it can call .connect()
  request.sendMoorIsolate.send(moorIsolate);
}

// used to bundle the SendPort and the target path, since isolate entry point
// functions can only take one parameter.
class _IsolateStartRequest {
  final SendPort sendMoorIsolate;
  final String targetPath;

  _IsolateStartRequest(this.sendMoorIsolate, this.targetPath);
}

// This annotation tells the code generator which tables this DB works with
@UseMoor(tables: [
  Users,
], daos: [
  UsersDao,
])
class AppDatabase extends _$AppDatabase {
  // we tell the database where to store the data with this constructor
  factory AppDatabase() {
    return AppDatabase.connect(
      DatabaseConnection.delayed(
        Future(
          () async {
            final isolate = await _createMoorIsolate();
            return isolate.connect();
          },
        ),
      ),
    );
  }

  // this is the new constructor
  AppDatabase.connect(DatabaseConnection connection)
      : super.connect(connection);

  // you should bump this number whenever you change or add a table definition. Migrations
  // are covered later in this readme
  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        beforeOpen: (details) async {
          await customStatement('PRAGMA foreign_keys = ON');
        },
      );

  Future<void> deleteEverything() {
    return transaction(() async {
      await customStatement('PRAGMA foreign_keys = OFF');
      for (final table in allTables) {
        await delete(table).go();
      }
    });
  }
}
