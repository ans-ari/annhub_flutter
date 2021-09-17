// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'iris_prediction_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IrisPredictionResponse _$IrisPredictionResponseFromJson(
    Map<String, dynamic> json) {
  return _IrisPredictionResponse.fromJson(json);
}

/// @nodoc
class _$IrisPredictionResponseTearOff {
  const _$IrisPredictionResponseTearOff();

  _IrisPredictionResponse call({required List<double> prediction}) {
    return _IrisPredictionResponse(
      prediction: prediction,
    );
  }

  IrisPredictionResponse fromJson(Map<String, Object> json) {
    return IrisPredictionResponse.fromJson(json);
  }
}

/// @nodoc
const $IrisPredictionResponse = _$IrisPredictionResponseTearOff();

/// @nodoc
mixin _$IrisPredictionResponse {
  List<double> get prediction => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IrisPredictionResponseCopyWith<IrisPredictionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IrisPredictionResponseCopyWith<$Res> {
  factory $IrisPredictionResponseCopyWith(IrisPredictionResponse value,
          $Res Function(IrisPredictionResponse) then) =
      _$IrisPredictionResponseCopyWithImpl<$Res>;
  $Res call({List<double> prediction});
}

/// @nodoc
class _$IrisPredictionResponseCopyWithImpl<$Res>
    implements $IrisPredictionResponseCopyWith<$Res> {
  _$IrisPredictionResponseCopyWithImpl(this._value, this._then);

  final IrisPredictionResponse _value;
  // ignore: unused_field
  final $Res Function(IrisPredictionResponse) _then;

  @override
  $Res call({
    Object? prediction = freezed,
  }) {
    return _then(_value.copyWith(
      prediction: prediction == freezed
          ? _value.prediction
          : prediction // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
abstract class _$IrisPredictionResponseCopyWith<$Res>
    implements $IrisPredictionResponseCopyWith<$Res> {
  factory _$IrisPredictionResponseCopyWith(_IrisPredictionResponse value,
          $Res Function(_IrisPredictionResponse) then) =
      __$IrisPredictionResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<double> prediction});
}

/// @nodoc
class __$IrisPredictionResponseCopyWithImpl<$Res>
    extends _$IrisPredictionResponseCopyWithImpl<$Res>
    implements _$IrisPredictionResponseCopyWith<$Res> {
  __$IrisPredictionResponseCopyWithImpl(_IrisPredictionResponse _value,
      $Res Function(_IrisPredictionResponse) _then)
      : super(_value, (v) => _then(v as _IrisPredictionResponse));

  @override
  _IrisPredictionResponse get _value => super._value as _IrisPredictionResponse;

  @override
  $Res call({
    Object? prediction = freezed,
  }) {
    return _then(_IrisPredictionResponse(
      prediction: prediction == freezed
          ? _value.prediction
          : prediction // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IrisPredictionResponse implements _IrisPredictionResponse {
  _$_IrisPredictionResponse({required this.prediction});

  factory _$_IrisPredictionResponse.fromJson(Map<String, dynamic> json) =>
      _$$_IrisPredictionResponseFromJson(json);

  @override
  final List<double> prediction;

  @override
  String toString() {
    return 'IrisPredictionResponse(prediction: $prediction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IrisPredictionResponse &&
            (identical(other.prediction, prediction) ||
                const DeepCollectionEquality()
                    .equals(other.prediction, prediction)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(prediction);

  @JsonKey(ignore: true)
  @override
  _$IrisPredictionResponseCopyWith<_IrisPredictionResponse> get copyWith =>
      __$IrisPredictionResponseCopyWithImpl<_IrisPredictionResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IrisPredictionResponseToJson(this);
  }
}

abstract class _IrisPredictionResponse implements IrisPredictionResponse {
  factory _IrisPredictionResponse({required List<double> prediction}) =
      _$_IrisPredictionResponse;

  factory _IrisPredictionResponse.fromJson(Map<String, dynamic> json) =
      _$_IrisPredictionResponse.fromJson;

  @override
  List<double> get prediction => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$IrisPredictionResponseCopyWith<_IrisPredictionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
