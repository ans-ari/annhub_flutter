import 'package:core/core.dart';
import 'package:injectable/injectable.dart';
import 'package:annhub_flutter_domain/data.dart';

import '../../../response_data.dart';

@injectable
class IrisPredictionResponseToEntityMapper
    implements Mapper<IrisPredictionResponse, IrisPrediction> {
  @override
  IrisPrediction map(IrisPredictionResponse input) => IrisPrediction(
        prediction: input.prediction,
      );
}
