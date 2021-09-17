import 'dart:math';

import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:annhub_flutter_domain/data.dart';
import 'package:annhub_flutter_domain/annhub_flutter_domain.dart';

abstract class RequestIrisUseCase {
  Future<Either<Failure, String>> call(FloraInfoParams param, bool isCallARI);
}

@Injectable(as: RequestIrisUseCase)
class RequestIrisUseCaseImpl extends RequestIrisUseCase {
  final IrisRepository _irisRepository;
  final Logger _logger;

  RequestIrisUseCaseImpl({
    required IrisRepository irisRepository,
    required Logger logger,
  })  : _irisRepository = irisRepository,
        _logger = logger;

  @override
  Future<Either<Failure, String>> call(
      FloraInfoParams param, bool isCallARI) async {
    _logger.d('Request Iris, param: $param');
    if (isCallARI) {
      final failureOrGetSpecies =
          await _irisRepository.irisPredictionARI(param: param);
      return failureOrGetSpecies.traverseFuture((res) {
        final prediction = res.prediction;
        final maxValueIndex = prediction.indexOf(prediction.reduce(max));
        switch (maxValueIndex) {
          case 0:
            return Future.value(
              EnumToString.convertToString(IrisSpecies.irisSetosa,
                  camelCase: true),
            );
          case 1:
            return Future.value(
              EnumToString.convertToString(IrisSpecies.irisVersicolor,
                  camelCase: true),
            );
          case 2:
            return Future.value(
              EnumToString.convertToString(IrisSpecies.irisVirginica,
                  camelCase: true),
            );
          default:
            return Future.value(Const.emptyString);
        }
      });
    } else {
      final failureOrGetSpecies =
          await _irisRepository.irisPrediction(param: param);
      return failureOrGetSpecies.traverseFuture((res) {
        final maxValueIndex = res.indexOf(res.reduce(max));
        switch (maxValueIndex) {
          case 0:
            return Future.value(
              EnumToString.convertToString(IrisSpecies.irisSetosa,
                  camelCase: true),
            );
          case 1:
            return Future.value(
              EnumToString.convertToString(IrisSpecies.irisVersicolor,
                  camelCase: true),
            );
          case 2:
            return Future.value(
              EnumToString.convertToString(IrisSpecies.irisVirginica,
                  camelCase: true),
            );
          default:
            return Future.value(Const.emptyString);
        }
      });
    }
  }
}
