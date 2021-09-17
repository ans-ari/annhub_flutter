// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'flora_info_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FloraInfoParams _$FloraInfoParamsFromJson(Map<String, dynamic> json) {
  return _FloraInfoParams.fromJson(json);
}

/// @nodoc
class _$FloraInfoParamsTearOff {
  const _$FloraInfoParamsTearOff();

  _FloraInfoParams call({required List<double> data}) {
    return _FloraInfoParams(
      data: data,
    );
  }

  FloraInfoParams fromJson(Map<String, Object> json) {
    return FloraInfoParams.fromJson(json);
  }
}

/// @nodoc
const $FloraInfoParams = _$FloraInfoParamsTearOff();

/// @nodoc
mixin _$FloraInfoParams {
  List<double> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FloraInfoParamsCopyWith<FloraInfoParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FloraInfoParamsCopyWith<$Res> {
  factory $FloraInfoParamsCopyWith(
          FloraInfoParams value, $Res Function(FloraInfoParams) then) =
      _$FloraInfoParamsCopyWithImpl<$Res>;
  $Res call({List<double> data});
}

/// @nodoc
class _$FloraInfoParamsCopyWithImpl<$Res>
    implements $FloraInfoParamsCopyWith<$Res> {
  _$FloraInfoParamsCopyWithImpl(this._value, this._then);

  final FloraInfoParams _value;
  // ignore: unused_field
  final $Res Function(FloraInfoParams) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
abstract class _$FloraInfoParamsCopyWith<$Res>
    implements $FloraInfoParamsCopyWith<$Res> {
  factory _$FloraInfoParamsCopyWith(
          _FloraInfoParams value, $Res Function(_FloraInfoParams) then) =
      __$FloraInfoParamsCopyWithImpl<$Res>;
  @override
  $Res call({List<double> data});
}

/// @nodoc
class __$FloraInfoParamsCopyWithImpl<$Res>
    extends _$FloraInfoParamsCopyWithImpl<$Res>
    implements _$FloraInfoParamsCopyWith<$Res> {
  __$FloraInfoParamsCopyWithImpl(
      _FloraInfoParams _value, $Res Function(_FloraInfoParams) _then)
      : super(_value, (v) => _then(v as _FloraInfoParams));

  @override
  _FloraInfoParams get _value => super._value as _FloraInfoParams;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_FloraInfoParams(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FloraInfoParams implements _FloraInfoParams {
  _$_FloraInfoParams({required this.data});

  factory _$_FloraInfoParams.fromJson(Map<String, dynamic> json) =>
      _$$_FloraInfoParamsFromJson(json);

  @override
  final List<double> data;

  @override
  String toString() {
    return 'FloraInfoParams(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FloraInfoParams &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$FloraInfoParamsCopyWith<_FloraInfoParams> get copyWith =>
      __$FloraInfoParamsCopyWithImpl<_FloraInfoParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FloraInfoParamsToJson(this);
  }
}

abstract class _FloraInfoParams implements FloraInfoParams {
  factory _FloraInfoParams({required List<double> data}) = _$_FloraInfoParams;

  factory _FloraInfoParams.fromJson(Map<String, dynamic> json) =
      _$_FloraInfoParams.fromJson;

  @override
  List<double> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FloraInfoParamsCopyWith<_FloraInfoParams> get copyWith =>
      throw _privateConstructorUsedError;
}
