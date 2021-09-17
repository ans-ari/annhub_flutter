import 'package:moor/moor.dart';
import 'package:uuid/uuid.dart';

import '../../utils/const.dart';

@DataClassName(DatabaseName.userDataClassName)
class Users extends Table {
  TextColumn get id => text().clientDefault(() => const Uuid().v4())();
  TextColumn get email => text()();
  TextColumn get name => text()();
  TextColumn get avatar => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
