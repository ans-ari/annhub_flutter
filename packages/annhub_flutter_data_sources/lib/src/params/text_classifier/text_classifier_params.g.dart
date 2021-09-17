// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_classifier_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TextClassifierParams _$$_TextClassifierParamsFromJson(
        Map<String, dynamic> json) =>
    _$_TextClassifierParams(
      modelFile: json['modelFile'] as String,
      vocabFile: json['vocabFile'] as String,
      rawText: json['rawText'] as String,
    );

Map<String, dynamic> _$$_TextClassifierParamsToJson(
        _$_TextClassifierParams instance) =>
    <String, dynamic>{
      'modelFile': instance.modelFile,
      'vocabFile': instance.vocabFile,
      'rawText': instance.rawText,
    };
