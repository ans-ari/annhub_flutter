import 'package:core/core.dart';
import 'package:dartz/dartz.dart';

import '../../../data.dart';

abstract class IrisRepository {
  Future<Either<Failure, List<double>>> irisPrediction({
    required FloraInfoParams param,
  });
  Future<Either<Failure, IrisPrediction>> irisPredictionARI({
    required FloraInfoParams param,
  });
}
