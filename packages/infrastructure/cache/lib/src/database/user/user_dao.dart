import 'package:moor/moor.dart';

import '../moor_database.dart' as db;
import '../moor_database.dart';
import 'user.dart';

part 'user_dao.g.dart';

@UseDao(tables: [Users])
class UsersDao extends DatabaseAccessor<db.AppDatabase> with _$UsersDaoMixin {
  UsersDao(db.AppDatabase db) : super(db);

  // All tables have getters in the generated class - we can select the transactions table
  Future<db.User?> getLastUser() {
    return (select(users)..limit(1)).getSingleOrNull();
  }

  // Moor supports Streams which emit elements when the watched data changes
  Stream<db.User> watchLastUser() => (select(users)..limit(1)).watchSingle();

  Future<void> insertUser(db.User user) =>
      into(users).insert(user, mode: InsertMode.insertOrReplace);

  // Updates a Task with a matching primary key
  Future<void> updateUser(db.User user) => update(users).replace(user);

  Future<void> deleteUser(db.User user) => delete(users).delete(user);

  Future<void> deleteTable() {
    return transaction(() async {
      // you only need this if you've manually enabled foreign keys
      await customStatement('PRAGMA foreign_keys = OFF');
      return delete(users).go().then((_) => {});
    });
  }
}
