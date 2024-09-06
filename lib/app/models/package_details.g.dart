// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackageDetailsImpl _$$PackageDetailsImplFromJson(Map<String, dynamic> json) =>
    _$PackageDetailsImpl(
      name: json['name'] as String,
      latest: Latest.fromJson(json['latest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PackageDetailsImplToJson(
        _$PackageDetailsImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'latest': instance.latest,
    };

_$LatestImpl _$$LatestImplFromJson(Map<String, dynamic> json) => _$LatestImpl(
      pubspec: Pubspec.fromJson(json['pubspec'] as Map<String, dynamic>),
      published: DateTime.parse(json['published'] as String),
    );

Map<String, dynamic> _$$LatestImplToJson(_$LatestImpl instance) =>
    <String, dynamic>{
      'pubspec': instance.pubspec,
      'published': instance.published.toIso8601String(),
    };

_$PubspecImpl _$$PubspecImplFromJson(Map<String, dynamic> json) =>
    _$PubspecImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      version: json['version'] as String,
    );

Map<String, dynamic> _$$PubspecImplToJson(_$PubspecImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'version': instance.version,
    };
