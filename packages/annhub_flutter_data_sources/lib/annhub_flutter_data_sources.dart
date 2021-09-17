library annhub_flutter_data_sources;

import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';
import 'package:annhub_flutter_data_sources/annhub_flutter_data_sources.config.dart';

// REPOSITORY
export 'src/repositories/iris/iris_repository_impl.dart';

// DATASOURCES
export 'src/data_sources/iris/iris_remote_data_source_impl.dart';

@injectableInit
void configureDependencies() => $initGetIt(GetIt.instance);
