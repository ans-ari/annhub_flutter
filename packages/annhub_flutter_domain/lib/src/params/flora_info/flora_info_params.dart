import 'package:freezed_annotation/freezed_annotation.dart';

part 'flora_info_params.freezed.dart';

@freezed
class FloraInfoParams with _$FloraInfoParams {
  factory FloraInfoParams({
    required List<double> data,
  }) = _FloraInfoParams;
}
