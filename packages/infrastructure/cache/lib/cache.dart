library cache;

import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';

import 'cache.config.dart';

export 'src/database/moor_database.dart';

@injectableInit
void configureDependencies() => $initGetIt(GetIt.instance);
