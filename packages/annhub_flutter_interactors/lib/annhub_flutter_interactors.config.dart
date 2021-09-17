// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:annhub_flutter_domain/annhub_flutter_domain.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i5;

import 'src/iris/request_iris_usecase.dart' as _i6;
import 'src/text_classification/get_text_classification.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.GetTextClassificationUseCase>(() =>
      _i3.GetTextClassificationUseCaseImpl(
          textClassificationRepository: get<_i4.TextClassificationRepository>(),
          logger: get<_i5.Logger>()));
  gh.factory<_i6.RequestIrisUseCase>(() => _i6.RequestIrisUseCaseImpl(
      irisRepository: get<_i4.IrisRepository>(), logger: get<_i5.Logger>()));
  return get;
}
