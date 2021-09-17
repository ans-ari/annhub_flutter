import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:annhub_flutter_domain/data.dart';
import 'package:annhub_flutter_domain/annhub_flutter_domain.dart';

abstract class GetTextClassificationUseCase {
  Future<Either<Failure, List<double>>> call(TextClassifierParams params);
}

@Injectable(as: GetTextClassificationUseCase)
class GetTextClassificationUseCaseImpl extends GetTextClassificationUseCase {
  final TextClassificationRepository _textClassificationRepository;
  final Logger _logger;

  GetTextClassificationUseCaseImpl({
    required TextClassificationRepository textClassificationRepository,
    required Logger logger,
  })  : _textClassificationRepository = textClassificationRepository,
        _logger = logger;

  @override
  Future<Either<Failure, List<double>>> call(
      TextClassifierParams params) async {
    _logger.d('Get Text Classification, param: $params');
    return await _textClassificationRepository.textClassification(
        params: params);
  }
}
