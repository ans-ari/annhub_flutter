import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'dio_connectivity_request_retrier.dart';

@injectable
class RetryOnConnectionChangeInterceptor extends Interceptor {
  final DioConnectivityRequestRetrier _requestRetrier;

  RetryOnConnectionChangeInterceptor({
    required DioConnectivityRequestRetrier requestRetrier,
  }) : _requestRetrier = requestRetrier;

  @override
  Future<dynamic> onError(
    DioError err,
    ErrorInterceptorHandler handler,
  ) async {
    if (_shouldRetry(err)) {
      try {
        return _requestRetrier.scheduleRequestRetry(err.requestOptions);
      } catch (e) {
        return e;
      }
    }
    return err;
  }

  bool _shouldRetry(DioError err) {
    return err.type == DioErrorType.other &&
        err.error != null &&
        err.error is SocketException;
  }
}
