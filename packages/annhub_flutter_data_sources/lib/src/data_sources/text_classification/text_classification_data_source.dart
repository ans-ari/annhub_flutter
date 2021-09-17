import 'package:injectable/injectable.dart';
import 'package:annhub_flutter_data_sources/src/classifiers/text_classifier/text_classifier_impl.dart';
import 'package:annhub_flutter_data_sources/src/mapper/params/text_classifier/text_classifier_params_mapper.dart';
import 'package:annhub_flutter_domain/data.dart';
import 'package:annhub_flutter_domain/annhub_flutter_domain.dart';

@Injectable(as: TextClassificationLocalDataSource)
class TextClassificationLocalDataSourceImpl
    implements TextClassificationLocalDataSource {
  TextClassificationLocalDataSourceImpl(
      {TextClassifierParamsMapper textClassifierParamsMapper =
          const TextClassifierParamsMapper()})
      : _textClassifierParamsMapper = textClassifierParamsMapper;

  TextClassifier? _textClassifier;
  String? _modelFile;
  String? _vocabFile;
  final TextClassifierParamsMapper _textClassifierParamsMapper;

  @override
  Future<List<double>> getTextClassification(
      {required TextClassifierParams params}) async {
    final mappedParams = _textClassifierParamsMapper.map(params);
    // if ((_modelFile == null || _modelFile != mappedParams.modelFile) &&
    //     mappedParams.modelFile.isNotEmpty) {
    _modelFile = mappedParams.modelFile;
    _vocabFile = mappedParams.vocabFile;
    _textClassifier =
        await TextClassifierImpl.createAsync(_modelFile!, _vocabFile!);
    // }
    return _textClassifier!.classify(mappedParams.rawText);
  }
}
