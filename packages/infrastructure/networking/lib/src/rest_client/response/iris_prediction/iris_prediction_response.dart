import 'package:freezed_annotation/freezed_annotation.dart';

part 'iris_prediction_response.freezed.dart';
part 'iris_prediction_response.g.dart';

@freezed
class IrisPredictionResponse with _$IrisPredictionResponse {
  factory IrisPredictionResponse({
    required List<double> prediction,
  }) = _IrisPredictionResponse;

  factory IrisPredictionResponse.fromJson(Map<String, dynamic> json) =>
      _$IrisPredictionResponseFromJson(json);
}
