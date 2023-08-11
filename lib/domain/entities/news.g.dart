// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_News _$$_NewsFromJson(Map<String, dynamic> json) => _$_News(
      status: json['status'] as String? ?? '',
      totalResults: json['totalResults'] as int? ?? 0,
      data: (json['articles'] as List<dynamic>?)
              ?.map((e) => NewsData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_NewsToJson(_$_News instance) => <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.data?.map((e) => e.toJson()).toList(),
    };

_$_NewsData _$$_NewsDataFromJson(Map<String, dynamic> json) => _$_NewsData(
      author: json['author'] as String? ?? '',
      title: json['title'] as String? ?? '',
      description: json['description'] as String?,
      url: json['url'] as String? ?? '',
      publishedAt: json['publishedAt'] == null
          ? null
          : DateTime.parse(json['publishedAt'] as String),
    );

Map<String, dynamic> _$$_NewsDataToJson(_$_NewsData instance) =>
    <String, dynamic>{
      'author': instance.author,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'publishedAt': instance.publishedAt?.toIso8601String(),
    };
