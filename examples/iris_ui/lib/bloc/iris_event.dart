part of 'iris_bloc.dart';

@freezed
class IrisEvent with _$IrisEvent {
  const factory IrisEvent.getIrisPrediction(
      {required List<double> data,
      required bool isCallARI}) = _GetIrisPrediction;
}
