import 'package:freezed_annotation/freezed_annotation.dart';

part 'iris_prediction.freezed.dart';

@freezed
class IrisPrediction with _$IrisPrediction {
  factory IrisPrediction({required List<double> prediction}) = _IrisPrediction;
}
