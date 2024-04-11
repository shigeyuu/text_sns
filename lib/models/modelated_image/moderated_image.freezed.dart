// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'moderated_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModeratedImage _$ModeratedImageFromJson(Map<String, dynamic> json) {
  return _ModeratedImage.fromJson(json);
}

/// @nodoc
mixin _$ModeratedImage {
  String get bucketName => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get modarationLabels =>
      throw _privateConstructorUsedError; //不適切な理由を列挙
  String get modarationModelVersion =>
      throw _privateConstructorUsedError; // 検証を行ったモデルの名前
  dynamic get fileName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModeratedImageCopyWith<ModeratedImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModeratedImageCopyWith<$Res> {
  factory $ModeratedImageCopyWith(
          ModeratedImage value, $Res Function(ModeratedImage) then) =
      _$ModeratedImageCopyWithImpl<$Res, ModeratedImage>;
  @useResult
  $Res call(
      {String bucketName,
      List<Map<String, dynamic>> modarationLabels,
      String modarationModelVersion,
      dynamic fileName});
}

/// @nodoc
class _$ModeratedImageCopyWithImpl<$Res, $Val extends ModeratedImage>
    implements $ModeratedImageCopyWith<$Res> {
  _$ModeratedImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bucketName = null,
    Object? modarationLabels = null,
    Object? modarationModelVersion = null,
    Object? fileName = freezed,
  }) {
    return _then(_value.copyWith(
      bucketName: null == bucketName
          ? _value.bucketName
          : bucketName // ignore: cast_nullable_to_non_nullable
              as String,
      modarationLabels: null == modarationLabels
          ? _value.modarationLabels
          : modarationLabels // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      modarationModelVersion: null == modarationModelVersion
          ? _value.modarationModelVersion
          : modarationModelVersion // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModeratedImageImplCopyWith<$Res>
    implements $ModeratedImageCopyWith<$Res> {
  factory _$$ModeratedImageImplCopyWith(_$ModeratedImageImpl value,
          $Res Function(_$ModeratedImageImpl) then) =
      __$$ModeratedImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String bucketName,
      List<Map<String, dynamic>> modarationLabels,
      String modarationModelVersion,
      dynamic fileName});
}

/// @nodoc
class __$$ModeratedImageImplCopyWithImpl<$Res>
    extends _$ModeratedImageCopyWithImpl<$Res, _$ModeratedImageImpl>
    implements _$$ModeratedImageImplCopyWith<$Res> {
  __$$ModeratedImageImplCopyWithImpl(
      _$ModeratedImageImpl _value, $Res Function(_$ModeratedImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bucketName = null,
    Object? modarationLabels = null,
    Object? modarationModelVersion = null,
    Object? fileName = freezed,
  }) {
    return _then(_$ModeratedImageImpl(
      bucketName: null == bucketName
          ? _value.bucketName
          : bucketName // ignore: cast_nullable_to_non_nullable
              as String,
      modarationLabels: null == modarationLabels
          ? _value._modarationLabels
          : modarationLabels // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      modarationModelVersion: null == modarationModelVersion
          ? _value.modarationModelVersion
          : modarationModelVersion // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: freezed == fileName ? _value.fileName! : fileName,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModeratedImageImpl extends _ModeratedImage {
  const _$ModeratedImageImpl(
      {required this.bucketName,
      final List<Map<String, dynamic>> modarationLabels = const [],
      this.modarationModelVersion = '',
      this.fileName = ""})
      : _modarationLabels = modarationLabels,
        super._();

  factory _$ModeratedImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModeratedImageImplFromJson(json);

  @override
  final String bucketName;
  final List<Map<String, dynamic>> _modarationLabels;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get modarationLabels {
    if (_modarationLabels is EqualUnmodifiableListView)
      return _modarationLabels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modarationLabels);
  }

//不適切な理由を列挙
  @override
  @JsonKey()
  final String modarationModelVersion;
// 検証を行ったモデルの名前
  @override
  @JsonKey()
  final dynamic fileName;

  @override
  String toString() {
    return 'ModeratedImage(bucketName: $bucketName, modarationLabels: $modarationLabels, modarationModelVersion: $modarationModelVersion, fileName: $fileName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModeratedImageImpl &&
            (identical(other.bucketName, bucketName) ||
                other.bucketName == bucketName) &&
            const DeepCollectionEquality()
                .equals(other._modarationLabels, _modarationLabels) &&
            (identical(other.modarationModelVersion, modarationModelVersion) ||
                other.modarationModelVersion == modarationModelVersion) &&
            const DeepCollectionEquality().equals(other.fileName, fileName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      bucketName,
      const DeepCollectionEquality().hash(_modarationLabels),
      modarationModelVersion,
      const DeepCollectionEquality().hash(fileName));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModeratedImageImplCopyWith<_$ModeratedImageImpl> get copyWith =>
      __$$ModeratedImageImplCopyWithImpl<_$ModeratedImageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModeratedImageImplToJson(
      this,
    );
  }
}

abstract class _ModeratedImage extends ModeratedImage {
  const factory _ModeratedImage(
      {required final String bucketName,
      final List<Map<String, dynamic>> modarationLabels,
      final String modarationModelVersion,
      final dynamic fileName}) = _$ModeratedImageImpl;
  const _ModeratedImage._() : super._();

  factory _ModeratedImage.fromJson(Map<String, dynamic> json) =
      _$ModeratedImageImpl.fromJson;

  @override
  String get bucketName;
  @override
  List<Map<String, dynamic>> get modarationLabels;
  @override //不適切な理由を列挙
  String get modarationModelVersion;
  @override // 検証を行ったモデルの名前
  dynamic get fileName;
  @override
  @JsonKey(ignore: true)
  _$$ModeratedImageImplCopyWith<_$ModeratedImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
