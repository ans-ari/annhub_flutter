// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'text_classifier_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TextClassifierParamsTearOff {
  const _$TextClassifierParamsTearOff();

  _TextClassifierParams call(
      {required String modelFile,
      required String vocabFile,
      required String rawText}) {
    return _TextClassifierParams(
      modelFile: modelFile,
      vocabFile: vocabFile,
      rawText: rawText,
    );
  }
}

/// @nodoc
const $TextClassifierParams = _$TextClassifierParamsTearOff();

/// @nodoc
mixin _$TextClassifierParams {
  String get modelFile => throw _privateConstructorUsedError;
  String get vocabFile => throw _privateConstructorUsedError;
  String get rawText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TextClassifierParamsCopyWith<TextClassifierParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextClassifierParamsCopyWith<$Res> {
  factory $TextClassifierParamsCopyWith(TextClassifierParams value,
          $Res Function(TextClassifierParams) then) =
      _$TextClassifierParamsCopyWithImpl<$Res>;
  $Res call({String modelFile, String vocabFile, String rawText});
}

/// @nodoc
class _$TextClassifierParamsCopyWithImpl<$Res>
    implements $TextClassifierParamsCopyWith<$Res> {
  _$TextClassifierParamsCopyWithImpl(this._value, this._then);

  final TextClassifierParams _value;
  // ignore: unused_field
  final $Res Function(TextClassifierParams) _then;

  @override
  $Res call({
    Object? modelFile = freezed,
    Object? vocabFile = freezed,
    Object? rawText = freezed,
  }) {
    return _then(_value.copyWith(
      modelFile: modelFile == freezed
          ? _value.modelFile
          : modelFile // ignore: cast_nullable_to_non_nullable
              as String,
      vocabFile: vocabFile == freezed
          ? _value.vocabFile
          : vocabFile // ignore: cast_nullable_to_non_nullable
              as String,
      rawText: rawText == freezed
          ? _value.rawText
          : rawText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TextClassifierParamsCopyWith<$Res>
    implements $TextClassifierParamsCopyWith<$Res> {
  factory _$TextClassifierParamsCopyWith(_TextClassifierParams value,
          $Res Function(_TextClassifierParams) then) =
      __$TextClassifierParamsCopyWithImpl<$Res>;
  @override
  $Res call({String modelFile, String vocabFile, String rawText});
}

/// @nodoc
class __$TextClassifierParamsCopyWithImpl<$Res>
    extends _$TextClassifierParamsCopyWithImpl<$Res>
    implements _$TextClassifierParamsCopyWith<$Res> {
  __$TextClassifierParamsCopyWithImpl(
      _TextClassifierParams _value, $Res Function(_TextClassifierParams) _then)
      : super(_value, (v) => _then(v as _TextClassifierParams));

  @override
  _TextClassifierParams get _value => super._value as _TextClassifierParams;

  @override
  $Res call({
    Object? modelFile = freezed,
    Object? vocabFile = freezed,
    Object? rawText = freezed,
  }) {
    return _then(_TextClassifierParams(
      modelFile: modelFile == freezed
          ? _value.modelFile
          : modelFile // ignore: cast_nullable_to_non_nullable
              as String,
      vocabFile: vocabFile == freezed
          ? _value.vocabFile
          : vocabFile // ignore: cast_nullable_to_non_nullable
              as String,
      rawText: rawText == freezed
          ? _value.rawText
          : rawText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TextClassifierParams implements _TextClassifierParams {
  _$_TextClassifierParams(
      {required this.modelFile,
      required this.vocabFile,
      required this.rawText});

  @override
  final String modelFile;
  @override
  final String vocabFile;
  @override
  final String rawText;

  @override
  String toString() {
    return 'TextClassifierParams(modelFile: $modelFile, vocabFile: $vocabFile, rawText: $rawText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TextClassifierParams &&
            (identical(other.modelFile, modelFile) ||
                const DeepCollectionEquality()
                    .equals(other.modelFile, modelFile)) &&
            (identical(other.vocabFile, vocabFile) ||
                const DeepCollectionEquality()
                    .equals(other.vocabFile, vocabFile)) &&
            (identical(other.rawText, rawText) ||
                const DeepCollectionEquality().equals(other.rawText, rawText)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(modelFile) ^
      const DeepCollectionEquality().hash(vocabFile) ^
      const DeepCollectionEquality().hash(rawText);

  @JsonKey(ignore: true)
  @override
  _$TextClassifierParamsCopyWith<_TextClassifierParams> get copyWith =>
      __$TextClassifierParamsCopyWithImpl<_TextClassifierParams>(
          this, _$identity);
}

abstract class _TextClassifierParams implements TextClassifierParams {
  factory _TextClassifierParams(
      {required String modelFile,
      required String vocabFile,
      required String rawText}) = _$_TextClassifierParams;

  @override
  String get modelFile => throw _privateConstructorUsedError;
  @override
  String get vocabFile => throw _privateConstructorUsedError;
  @override
  String get rawText => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TextClassifierParamsCopyWith<_TextClassifierParams> get copyWith =>
      throw _privateConstructorUsedError;
}
