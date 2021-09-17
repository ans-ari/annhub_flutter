import '../../../data.dart';

abstract class TextClassificationLocalDataSource {
  Future<List<double>> getTextClassification({
    required TextClassifierParams params,
  });
}
