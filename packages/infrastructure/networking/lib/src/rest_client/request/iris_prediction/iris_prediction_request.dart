import 'package:freezed_annotation/freezed_annotation.dart';

part 'iris_prediction_request.freezed.dart';
part 'iris_prediction_request.g.dart';

@freezed
class IrisPredictionRequest with _$IrisPredictionRequest {
  const factory IrisPredictionRequest({
    required List<double> data,
  }) = _IrisPredictionRequest;

  factory IrisPredictionRequest.fromJson(Map<String, dynamic> json) =>
      _$IrisPredictionRequestFromJson(json);
}
