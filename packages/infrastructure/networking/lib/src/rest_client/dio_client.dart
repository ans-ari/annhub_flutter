import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'exceptions/network_exceptions.dart';

const _defaultConnectTimeout = Duration.millisecondsPerMinute;
const _defaultReceiveTimeout = Duration.millisecondsPerMinute;

class DioClient {
  final Dio _dio;
  Dio? dio;
  DioClient(
    Dio dio, {
    required String baseUrl,
    List<Interceptor>? interceptors,
  }) : _dio = dio {
    _dio
      ..options.baseUrl = baseUrl
      ..options.connectTimeout = _defaultConnectTimeout
      ..options.receiveTimeout = _defaultReceiveTimeout
      ..options.followRedirects = false
      ..options.validateStatus = (status) {
        return status! < 500;
      }
      ..httpClientAdapter
      ..options.contentType = Headers.jsonContentType;

    if (interceptors?.isNotEmpty ?? false) {
      _dio.interceptors.addAll(interceptors ?? []);
    }
    if (kDebugMode) {
      _dio.interceptors.add(
        LogInterceptor(
          responseBody: true,
          responseHeader: false,
          requestBody: true,
          requestHeader: true,
        ),
      );
    }
  }

  Future<dynamic> get(
    String uri, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _dio
          .get(
        uri,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      )
          .catchError(
        (error) {
          throw NetworkExceptions.getDioException(error);
        },
      );
      return response.data;
    } catch (error) {
      if (error is DioError) {
        throw NetworkExceptions.getDioException(error);
      } else {
        throw Exception(error);
      }
    }
  }

  Future<dynamic> post(
    String uri, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _dio
          .post(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      )
          .catchError(
        (error) {
          throw NetworkExceptions.getDioException(error);
        },
      );
      return response.data;
    } catch (error) {
      if (error is DioError) {
        throw NetworkExceptions.getDioException(error);
      } else {
        throw Exception(error);
      }
    }
  }

  Future<dynamic> patch(
    String uri, {
    dynamic data,
    required Map<String, dynamic> queryParameters,
    required Options options,
    required CancelToken cancelToken,
    required ProgressCallback onSendProgress,
    required ProgressCallback onReceiveProgress,
  }) async {
    try {
      final response = await _dio
          .patch(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      )
          .catchError(
        (error) {
          throw NetworkExceptions.getDioException(error);
        },
      );
      return response.data;
    } catch (error) {
      if (error is DioError) {
        throw NetworkExceptions.getDioException(error);
      } else {
        throw Exception(error);
      }
    }
  }

  Future<dynamic> delete(
    String uri, {
    dynamic data,
    required Map<String, dynamic> queryParameters,
    required Options options,
    required CancelToken cancelToken,
  }) async {
    try {
      final response = await _dio
          .delete(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      )
          .catchError(
        (error) {
          throw NetworkExceptions.getDioException(error);
        },
      );
      return response.data;
    } catch (error) {
      if (error is DioError) {
        throw NetworkExceptions.getDioException(error);
      } else {
        throw Exception(error);
      }
    }
  }

  Future<dynamic> fetch({
    required RequestOptions requestOptions,
  }) async {
    try {
      dio ??= _dio.copyWith();
      final response = await dio?.fetch(requestOptions).catchError(
        (error) {
          throw NetworkExceptions.getDioException(error);
        },
      );
      return response?.data;
    } catch (error) {
      if (error is DioError) {
        throw NetworkExceptions.getDioException(error);
      } else {
        throw Exception(error);
      }
    }
  }
}

extension DioExtensions on Dio {
  Dio copyWith() {
    return this;
  }
}

/*
*     (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
*
* */
