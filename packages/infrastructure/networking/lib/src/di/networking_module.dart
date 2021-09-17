import 'package:connectivity/connectivity.dart';
import 'package:core/config.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../rest_client/dio_client.dart';
import '../rest_client/interceptors/retry_on_connection_changed_interceptor.dart';

@module
abstract class NetworkingModule {
  @Singleton(dependsOn: [RetryOnConnectionChangeInterceptor])
  @preResolve
  Future<DioClient> getDioClient(
    RetryOnConnectionChangeInterceptor retryOnConnectionChangeInterceptor,
  ) async =>
      DioClient(
        dio,
        baseUrl: Env.baseUrl,
        interceptors: [
          retryOnConnectionChangeInterceptor,
        ],
      );

  @singleton
  Dio get dio => Dio();

  @singleton
  Connectivity get connectivity;
}
