import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:annhub_flutter_domain/data.dart';
import 'package:annhub_flutter_domain/annhub_flutter_domain.dart';

@Injectable(as: TextClassificationRepository)
class TextClassificationRepositoryImpl implements TextClassificationRepository {
  TextClassificationRepositoryImpl({
    required TextClassificationLocalDataSource
        textClassificationLocalDataSource,
    required Logger logger,
  })  : _textClassificationLocalDataSource = textClassificationLocalDataSource,
        _logger = logger;

  final TextClassificationLocalDataSource _textClassificationLocalDataSource;
  final Logger _logger;

  @override
  Future<Either<Failure, List<double>>> textClassification(
      {required TextClassifierParams params}) async {
    try {
      return Right(await _textClassificationLocalDataSource
          .getTextClassification(params: params));
    } catch (e) {
      _logger.e(e);
      return const Left(Failure.unexpected());
    }
  }
}
