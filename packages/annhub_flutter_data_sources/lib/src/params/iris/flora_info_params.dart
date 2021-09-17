import 'package:freezed_annotation/freezed_annotation.dart';

part 'flora_info_params.freezed.dart';
part 'flora_info_params.g.dart';

@freezed
class FloraInfoParams with _$FloraInfoParams {
  factory FloraInfoParams({
    required List<double> data,
  }) = _FloraInfoParams;

  factory FloraInfoParams.fromJson(Map<String, dynamic> json) =>
      _$FloraInfoParamsFromJson(json);
}
