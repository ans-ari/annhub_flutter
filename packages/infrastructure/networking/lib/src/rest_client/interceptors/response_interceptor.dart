import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:networking/src/rest_client/response/error/error_response.dart';
import 'package:networking/src/utils/constants.dart';

import '../../../networking.dart';

@injectable
class ResponseInterceptor extends Interceptor {
  ResponseInterceptor();

  @override
  void onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) {
    if (response.statusCode == null) {
      handler.reject(
        DioError(
          requestOptions: response.requestOptions,
          error: const NetworkExceptions.unableToProcess(),
        ),
      );
      return;
    }
    if (response.statusCode! >= HttpResponseCode.redirect) {
      final data = ErrorResponse.fromJson(response.data);
      handler.reject(
        DioError(
          requestOptions: response.requestOptions,
          error: NetworkExceptions.defaultError(data.message),
        ),
      );
      return;
    }
    handler.next(response);
  }
}
