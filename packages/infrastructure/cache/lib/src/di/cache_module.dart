import 'package:injectable/injectable.dart';

import '../../cache.dart';

@module
abstract class CacheModule {
  @singleton
  AppDatabase get appDatabase => AppDatabase();
}
