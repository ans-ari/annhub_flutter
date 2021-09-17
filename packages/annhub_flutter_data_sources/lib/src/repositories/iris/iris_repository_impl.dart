import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:annhub_flutter_domain/data.dart';
import 'package:annhub_flutter_domain/annhub_flutter_domain.dart';

@Injectable(as: IrisRepository)
class IrisRepositoryImpl implements IrisRepository {
  const IrisRepositoryImpl({
    required IrisRemoteDataSource irisRemoteDataSource,
    required Logger logger,
  })  : _irisRemoteDataSource = irisRemoteDataSource,
        _logger = logger;

  final IrisRemoteDataSource _irisRemoteDataSource;
  final Logger _logger;

  @override
  Future<Either<Failure, List<double>>> irisPrediction(
      {required FloraInfoParams param}) async {
    try {
      return Right(
          await _irisRemoteDataSource.fetchIrisPrediction(param: param));
    } catch (e) {
      _logger.e(e);
      return const Left(Failure.unexpected());
    }
  }

  @override
  Future<Either<Failure, IrisPrediction>> irisPredictionARI(
      {required FloraInfoParams param}) async {
    try {
      return Right(
          await _irisRemoteDataSource.fetchIrisPredictionARI(param: param));
    } catch (e) {
      _logger.e(e);
      return const Left(Failure.unexpected());
    }
  }
}
