// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'iris_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IrisEventTearOff {
  const _$IrisEventTearOff();

  _GetIrisPrediction getIrisPrediction(
      {required List<double> data, required bool isCallARI}) {
    return _GetIrisPrediction(
      data: data,
      isCallARI: isCallARI,
    );
  }
}

/// @nodoc
const $IrisEvent = _$IrisEventTearOff();

/// @nodoc
mixin _$IrisEvent {
  List<double> get data => throw _privateConstructorUsedError;
  bool get isCallARI => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<double> data, bool isCallARI)
        getIrisPrediction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<double> data, bool isCallARI)? getIrisPrediction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<double> data, bool isCallARI)? getIrisPrediction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetIrisPrediction value) getIrisPrediction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetIrisPrediction value)? getIrisPrediction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetIrisPrediction value)? getIrisPrediction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IrisEventCopyWith<IrisEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IrisEventCopyWith<$Res> {
  factory $IrisEventCopyWith(IrisEvent value, $Res Function(IrisEvent) then) =
      _$IrisEventCopyWithImpl<$Res>;
  $Res call({List<double> data, bool isCallARI});
}

/// @nodoc
class _$IrisEventCopyWithImpl<$Res> implements $IrisEventCopyWith<$Res> {
  _$IrisEventCopyWithImpl(this._value, this._then);

  final IrisEvent _value;
  // ignore: unused_field
  final $Res Function(IrisEvent) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? isCallARI = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<double>,
      isCallARI: isCallARI == freezed
          ? _value.isCallARI
          : isCallARI // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$GetIrisPredictionCopyWith<$Res>
    implements $IrisEventCopyWith<$Res> {
  factory _$GetIrisPredictionCopyWith(
          _GetIrisPrediction value, $Res Function(_GetIrisPrediction) then) =
      __$GetIrisPredictionCopyWithImpl<$Res>;
  @override
  $Res call({List<double> data, bool isCallARI});
}

/// @nodoc
class __$GetIrisPredictionCopyWithImpl<$Res>
    extends _$IrisEventCopyWithImpl<$Res>
    implements _$GetIrisPredictionCopyWith<$Res> {
  __$GetIrisPredictionCopyWithImpl(
      _GetIrisPrediction _value, $Res Function(_GetIrisPrediction) _then)
      : super(_value, (v) => _then(v as _GetIrisPrediction));

  @override
  _GetIrisPrediction get _value => super._value as _GetIrisPrediction;

  @override
  $Res call({
    Object? data = freezed,
    Object? isCallARI = freezed,
  }) {
    return _then(_GetIrisPrediction(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<double>,
      isCallARI: isCallARI == freezed
          ? _value.isCallARI
          : isCallARI // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GetIrisPrediction implements _GetIrisPrediction {
  const _$_GetIrisPrediction({required this.data, required this.isCallARI});

  @override
  final List<double> data;
  @override
  final bool isCallARI;

  @override
  String toString() {
    return 'IrisEvent.getIrisPrediction(data: $data, isCallARI: $isCallARI)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetIrisPrediction &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.isCallARI, isCallARI) ||
                const DeepCollectionEquality()
                    .equals(other.isCallARI, isCallARI)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(isCallARI);

  @JsonKey(ignore: true)
  @override
  _$GetIrisPredictionCopyWith<_GetIrisPrediction> get copyWith =>
      __$GetIrisPredictionCopyWithImpl<_GetIrisPrediction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<double> data, bool isCallARI)
        getIrisPrediction,
  }) {
    return getIrisPrediction(data, isCallARI);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<double> data, bool isCallARI)? getIrisPrediction,
  }) {
    return getIrisPrediction?.call(data, isCallARI);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<double> data, bool isCallARI)? getIrisPrediction,
    required TResult orElse(),
  }) {
    if (getIrisPrediction != null) {
      return getIrisPrediction(data, isCallARI);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetIrisPrediction value) getIrisPrediction,
  }) {
    return getIrisPrediction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetIrisPrediction value)? getIrisPrediction,
  }) {
    return getIrisPrediction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetIrisPrediction value)? getIrisPrediction,
    required TResult orElse(),
  }) {
    if (getIrisPrediction != null) {
      return getIrisPrediction(this);
    }
    return orElse();
  }
}

abstract class _GetIrisPrediction implements IrisEvent {
  const factory _GetIrisPrediction(
      {required List<double> data,
      required bool isCallARI}) = _$_GetIrisPrediction;

  @override
  List<double> get data => throw _privateConstructorUsedError;
  @override
  bool get isCallARI => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetIrisPredictionCopyWith<_GetIrisPrediction> get copyWith =>
      throw _privateConstructorUsedError;
}
