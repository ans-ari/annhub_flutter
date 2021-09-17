import '../../../data.dart';

abstract class IrisRemoteDataSource {
  Future<List<double>> fetchIrisPrediction({
    required FloraInfoParams param,
  });
  Future<IrisPrediction> fetchIrisPredictionARI({
    required FloraInfoParams param,
  });
}
