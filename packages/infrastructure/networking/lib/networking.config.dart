// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity/connectivity.dart' as _i3;
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'src/di/networking_module.dart' as _i10;
import 'src/rest_client/dio_client.dart' as _i9;
import 'src/rest_client/interceptors/dio_connectivity_request_retrier.dart'
    as _i5;
import 'src/rest_client/interceptors/response_interceptor.dart' as _i7;
import 'src/rest_client/interceptors/retry_on_connection_changed_interceptor.dart'
    as _i8;
import 'src/rest_client/mapper/iris_prediction_response_to_entity_mapper.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final networkingModule = _$NetworkingModule();
  gh.singleton<_i3.Connectivity>(networkingModule.connectivity);
  gh.singleton<_i4.Dio>(networkingModule.dio);
  gh.factory<_i5.DioConnectivityRequestRetrier>(() =>
      _i5.DioConnectivityRequestRetrier(
          dio: get<_i4.Dio>(), connectivity: get<_i3.Connectivity>()));
  gh.factory<_i6.IrisPredictionResponseToEntityMapper>(
      () => _i6.IrisPredictionResponseToEntityMapper());
  gh.factory<_i7.ResponseInterceptor>(() => _i7.ResponseInterceptor());
  gh.factory<_i8.RetryOnConnectionChangeInterceptor>(() =>
      _i8.RetryOnConnectionChangeInterceptor(
          requestRetrier: get<_i5.DioConnectivityRequestRetrier>()));
  await gh.singletonAsync<_i9.DioClient>(
      () => networkingModule
          .getDioClient(get<_i8.RetryOnConnectionChangeInterceptor>()),
      dependsOn: [_i8.RetryOnConnectionChangeInterceptor],
      preResolve: true);
  return get;
}

class _$NetworkingModule extends _i10.NetworkingModule {
  @override
  _i3.Connectivity get connectivity => _i3.Connectivity();
}
