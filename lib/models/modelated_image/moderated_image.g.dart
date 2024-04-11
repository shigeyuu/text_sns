// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moderated_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModeratedImageImpl _$$ModeratedImageImplFromJson(Map<String, dynamic> json) =>
    _$ModeratedImageImpl(
      bucketName: json['bucketName'] as String,
      modarationLabels: (json['modarationLabels'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
      modarationModelVersion: json['modarationModelVersion'] as String? ?? '',
      fileName: json['fileName'] ?? "",
    );

Map<String, dynamic> _$$ModeratedImageImplToJson(
        _$ModeratedImageImpl instance) =>
    <String, dynamic>{
      'bucketName': instance.bucketName,
      'modarationLabels': instance.modarationLabels,
      'modarationModelVersion': instance.modarationModelVersion,
      'fileName': instance.fileName,
    };
