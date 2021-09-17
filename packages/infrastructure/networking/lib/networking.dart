library networking;

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'networking.config.dart';

export 'src/rest_client/dio_client.dart';

export 'src/rest_client/exceptions/network_exceptions.dart';

export 'package:dio/dio.dart';

@injectableInit
void configureDependencies() => $initGetIt(GetIt.instance);
