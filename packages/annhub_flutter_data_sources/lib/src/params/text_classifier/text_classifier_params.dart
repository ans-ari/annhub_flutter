import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_classifier_params.freezed.dart';
part 'text_classifier_params.g.dart';

@freezed
class TextClassifierParams with _$TextClassifierParams {
  factory TextClassifierParams(
      {required String modelFile,
      required String vocabFile,
      required String rawText}) = _TextClassifierParams;

  factory TextClassifierParams.fromJson(Map<String, dynamic> json) =>
      _$TextClassifierParamsFromJson(json);
}
