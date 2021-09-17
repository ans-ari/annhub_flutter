// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iris_prediction_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IrisPredictionResponse _$$_IrisPredictionResponseFromJson(
        Map<String, dynamic> json) =>
    _$_IrisPredictionResponse(
      prediction: (json['prediction'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$_IrisPredictionResponseToJson(
        _$_IrisPredictionResponse instance) =>
    <String, dynamic>{
      'prediction': instance.prediction,
    };
