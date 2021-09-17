import 'package:core/core.dart';
import 'package:injectable/injectable.dart';
import 'package:annhub_flutter_domain/data.dart' as domain;

import '../../../params/text_classifier/text_classifier_params.dart' as data;

@injectable
class TextClassifierParamsMapper
    implements Mapper<domain.TextClassifierParams, data.TextClassifierParams> {
  const TextClassifierParamsMapper();

  @override
  data.TextClassifierParams map(domain.TextClassifierParams input) =>
      data.TextClassifierParams(
          modelFile: input.modelFile,
          vocabFile: input.vocabFile,
          rawText: input.rawText);
}
