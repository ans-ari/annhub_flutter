import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class DioConnectivityRequestRetrier {
  final Dio _dio;
  final Connectivity _connectivity;

  DioConnectivityRequestRetrier({
    required Dio dio,
    required Connectivity connectivity,
  })  : _dio = dio,
        _connectivity = connectivity;

  Future<Response> scheduleRequestRetry(RequestOptions requestOptions) async {
    // ignore: unused_local_variable
    StreamSubscription streamSubscription;
    final responseCompleter = Completer<Response>();

    streamSubscription = _connectivity.onConnectivityChanged.listen(
      (connectivityResult) {
        if (connectivityResult != ConnectivityResult.none) {
          // streamSubscription.cancel();
          responseCompleter.complete(
            _dio.request(
              requestOptions.path,
              cancelToken: requestOptions.cancelToken,
              data: requestOptions.data,
              onReceiveProgress: requestOptions.onReceiveProgress,
              onSendProgress: requestOptions.onSendProgress,
              queryParameters: requestOptions.queryParameters,
            ),
          );
        }
      },
    );

    return responseCompleter.future;
  }
}
