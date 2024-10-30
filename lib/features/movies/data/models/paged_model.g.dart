// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paged_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PagedModelImpl<T> _$$PagedModelImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$PagedModelImpl<T>(
      page: (json['page'] as num).toInt(),
      totalPages: (json['total_pages'] as num).toInt(),
      totalResults: (json['total_results'] as num).toInt(),
      results: (json['results'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$$PagedModelImplToJson<T>(
  _$PagedModelImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'page': instance.page,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
      'results': instance.results.map(toJsonT).toList(),
    };
