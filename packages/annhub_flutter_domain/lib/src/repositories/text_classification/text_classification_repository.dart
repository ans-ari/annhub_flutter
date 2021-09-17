import 'package:core/core.dart';
import 'package:dartz/dartz.dart';

import '../../../data.dart';

abstract class TextClassificationRepository {
  Future<Either<Failure, List<double>>> textClassification({
    required TextClassifierParams params,
  });
}
