// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:annhub_flutter_domain/annhub_flutter_domain.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i9;
import 'package:networking/mapper.dart' as _i7;
import 'package:networking/networking.dart' as _i6;

import 'src/data_sources/iris/iris_remote_data_source_impl.dart' as _i5;
import 'src/data_sources/text_classification/text_classification_data_source.dart'
    as _i11;
import 'src/mapper/params/flora_info_params_mapper.dart' as _i3;
import 'src/mapper/params/text_classifier/text_classifier_params_mapper.dart'
    as _i10;
import 'src/repositories/iris/iris_repository_impl.dart' as _i8;
import 'src/repositories/text_classification/text_classification_repository_impl.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.FloraInfoParamsMapper>(() => _i3.FloraInfoParamsMapper());
  gh.factory<_i4.IrisRemoteDataSource>(() => _i5.IrisRemoteDataSourceImpl(
      dioClient: get<_i6.DioClient>(),
      floraInfoParamMapper: get<_i3.FloraInfoParamsMapper>(),
      irisPredictionResponseToEntityMapper:
          get<_i7.IrisPredictionResponseToEntityMapper>()));
  gh.factory<_i4.IrisRepository>(() => _i8.IrisRepositoryImpl(
      irisRemoteDataSource: get<_i4.IrisRemoteDataSource>(),
      logger: get<_i9.Logger>()));
  gh.factory<_i10.TextClassifierParamsMapper>(
      () => _i10.TextClassifierParamsMapper());
  gh.factory<_i4.TextClassificationLocalDataSource>(() =>
      _i11.TextClassificationLocalDataSourceImpl(
          textClassifierParamsMapper: get<_i10.TextClassifierParamsMapper>()));
  gh.factory<_i4.TextClassificationRepository>(() =>
      _i12.TextClassificationRepositoryImpl(
          textClassificationLocalDataSource:
              get<_i4.TextClassificationLocalDataSource>(),
          logger: get<_i9.Logger>()));
  return get;
}
