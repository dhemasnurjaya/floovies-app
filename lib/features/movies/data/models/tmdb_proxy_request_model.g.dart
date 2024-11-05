// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tmdb_proxy_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TmdbProxyRequestModelImpl _$$TmdbProxyRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TmdbProxyRequestModelImpl(
      path: json['path'] as String,
      queries: json['queries'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$TmdbProxyRequestModelImplToJson(
        _$TmdbProxyRequestModelImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'queries': instance.queries,
    };
