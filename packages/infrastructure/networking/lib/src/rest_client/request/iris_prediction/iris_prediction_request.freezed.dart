// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'iris_prediction_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IrisPredictionRequest _$IrisPredictionRequestFromJson(
    Map<String, dynamic> json) {
  return _IrisPredictionRequest.fromJson(json);
}

/// @nodoc
class _$IrisPredictionRequestTearOff {
  const _$IrisPredictionRequestTearOff();

  _IrisPredictionRequest call({required List<double> data}) {
    return _IrisPredictionRequest(
      data: data,
    );
  }

  IrisPredictionRequest fromJson(Map<String, Object> json) {
    return IrisPredictionRequest.fromJson(json);
  }
}

/// @nodoc
const $IrisPredictionRequest = _$IrisPredictionRequestTearOff();

/// @nodoc
mixin _$IrisPredictionRequest {
  List<double> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IrisPredictionRequestCopyWith<IrisPredictionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IrisPredictionRequestCopyWith<$Res> {
  factory $IrisPredictionRequestCopyWith(IrisPredictionRequest value,
          $Res Function(IrisPredictionRequest) then) =
      _$IrisPredictionRequestCopyWithImpl<$Res>;
  $Res call({List<double> data});
}

/// @nodoc
class _$IrisPredictionRequestCopyWithImpl<$Res>
    implements $IrisPredictionRequestCopyWith<$Res> {
  _$IrisPredictionRequestCopyWithImpl(this._value, this._then);

  final IrisPredictionRequest _value;
  // ignore: unused_field
  final $Res Function(IrisPredictionRequest) _then;

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
abstract class _$IrisPredictionRequestCopyWith<$Res>
    implements $IrisPredictionRequestCopyWith<$Res> {
  factory _$IrisPredictionRequestCopyWith(_IrisPredictionRequest value,
          $Res Function(_IrisPredictionRequest) then) =
      __$IrisPredictionRequestCopyWithImpl<$Res>;
  @override
  $Res call({List<double> data});
}

/// @nodoc
class __$IrisPredictionRequestCopyWithImpl<$Res>
    extends _$IrisPredictionRequestCopyWithImpl<$Res>
    implements _$IrisPredictionRequestCopyWith<$Res> {
  __$IrisPredictionRequestCopyWithImpl(_IrisPredictionRequest _value,
      $Res Function(_IrisPredictionRequest) _then)
      : super(_value, (v) => _then(v as _IrisPredictionRequest));

  @override
  _IrisPredictionRequest get _value => super._value as _IrisPredictionRequest;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_IrisPredictionRequest(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IrisPredictionRequest implements _IrisPredictionRequest {
  const _$_IrisPredictionRequest({required this.data});

  factory _$_IrisPredictionRequest.fromJson(Map<String, dynamic> json) =>
      _$$_IrisPredictionRequestFromJson(json);

  @override
  final List<double> data;

  @override
  String toString() {
    return 'IrisPredictionRequest(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IrisPredictionRequest &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$IrisPredictionRequestCopyWith<_IrisPredictionRequest> get copyWith =>
      __$IrisPredictionRequestCopyWithImpl<_IrisPredictionRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IrisPredictionRequestToJson(this);
  }
}

abstract class _IrisPredictionRequest implements IrisPredictionRequest {
  const factory _IrisPredictionRequest({required List<double> data}) =
      _$_IrisPredictionRequest;

  factory _IrisPredictionRequest.fromJson(Map<String, dynamic> json) =
      _$_IrisPredictionRequest.fromJson;

  @override
  List<double> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$IrisPredictionRequestCopyWith<_IrisPredictionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
