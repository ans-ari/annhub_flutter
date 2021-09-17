// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'iris_prediction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IrisPredictionTearOff {
  const _$IrisPredictionTearOff();

  _IrisPrediction call({required List<double> prediction}) {
    return _IrisPrediction(
      prediction: prediction,
    );
  }
}

/// @nodoc
const $IrisPrediction = _$IrisPredictionTearOff();

/// @nodoc
mixin _$IrisPrediction {
  List<double> get prediction => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IrisPredictionCopyWith<IrisPrediction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IrisPredictionCopyWith<$Res> {
  factory $IrisPredictionCopyWith(
          IrisPrediction value, $Res Function(IrisPrediction) then) =
      _$IrisPredictionCopyWithImpl<$Res>;
  $Res call({List<double> prediction});
}

/// @nodoc
class _$IrisPredictionCopyWithImpl<$Res>
    implements $IrisPredictionCopyWith<$Res> {
  _$IrisPredictionCopyWithImpl(this._value, this._then);

  final IrisPrediction _value;
  // ignore: unused_field
  final $Res Function(IrisPrediction) _then;

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
abstract class _$IrisPredictionCopyWith<$Res>
    implements $IrisPredictionCopyWith<$Res> {
  factory _$IrisPredictionCopyWith(
          _IrisPrediction value, $Res Function(_IrisPrediction) then) =
      __$IrisPredictionCopyWithImpl<$Res>;
  @override
  $Res call({List<double> prediction});
}

/// @nodoc
class __$IrisPredictionCopyWithImpl<$Res>
    extends _$IrisPredictionCopyWithImpl<$Res>
    implements _$IrisPredictionCopyWith<$Res> {
  __$IrisPredictionCopyWithImpl(
      _IrisPrediction _value, $Res Function(_IrisPrediction) _then)
      : super(_value, (v) => _then(v as _IrisPrediction));

  @override
  _IrisPrediction get _value => super._value as _IrisPrediction;

  @override
  $Res call({
    Object? prediction = freezed,
  }) {
    return _then(_IrisPrediction(
      prediction: prediction == freezed
          ? _value.prediction
          : prediction // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc

class _$_IrisPrediction implements _IrisPrediction {
  _$_IrisPrediction({required this.prediction});

  @override
  final List<double> prediction;

  @override
  String toString() {
    return 'IrisPrediction(prediction: $prediction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IrisPrediction &&
            (identical(other.prediction, prediction) ||
                const DeepCollectionEquality()
                    .equals(other.prediction, prediction)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(prediction);

  @JsonKey(ignore: true)
  @override
  _$IrisPredictionCopyWith<_IrisPrediction> get copyWith =>
      __$IrisPredictionCopyWithImpl<_IrisPrediction>(this, _$identity);
}

abstract class _IrisPrediction implements IrisPrediction {
  factory _IrisPrediction({required List<double> prediction}) =
      _$_IrisPrediction;

  @override
  List<double> get prediction => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$IrisPredictionCopyWith<_IrisPrediction> get copyWith =>
      throw _privateConstructorUsedError;
}
