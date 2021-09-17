// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iris_prediction_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IrisPredictionRequest _$$_IrisPredictionRequestFromJson(
        Map<String, dynamic> json) =>
    _$_IrisPredictionRequest(
      data: (json['data'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$_IrisPredictionRequestToJson(
        _$_IrisPredictionRequest instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
