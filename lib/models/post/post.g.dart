// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      commentCount: json['commentCount'] as int? ?? 0,
      content: json['content'] as String,
      createdAt: json['createdAt'],
      likeCount: json['likeCount'] as int? ?? 0,
      uid: json['uid'] as String,
      parentDocRef: json['parentDocRef'],
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'commentCount': instance.commentCount,
      'content': instance.content,
      'createdAt': instance.createdAt,
      'likeCount': instance.likeCount,
      'uid': instance.uid,
      'parentDocRef': instance.parentDocRef,
    };
