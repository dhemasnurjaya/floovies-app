// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multi_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchResultModelMovieImpl _$$SearchResultModelMovieImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchResultModelMovieImpl(
      backdropPath: json['backdrop_path'] as String,
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      originalTitle: json['original_title'] as String,
      overview: json['overview'] as String,
      posterPath: json['poster_path'] as String?,
      adult: json['adult'] as bool,
      genreIds: (json['genre_ids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      originalLanguage: json['original_language'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      releaseDate: json['release_date'] as String,
      video: json['video'] as bool,
      voteAverage: (json['vote_average'] as num).toDouble(),
      voteCount: (json['vote_count'] as num).toInt(),
      $type: json['media_type'] as String?,
    );

Map<String, dynamic> _$$SearchResultModelMovieImplToJson(
        _$SearchResultModelMovieImpl instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'title': instance.title,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'adult': instance.adult,
      'genre_ids': instance.genreIds,
      'original_language': instance.originalLanguage,
      'popularity': instance.popularity,
      'release_date': instance.releaseDate,
      'video': instance.video,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'media_type': instance.$type,
    };

_$SearchResultModelTvImpl _$$SearchResultModelTvImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchResultModelTvImpl(
      backdropPath: json['backdrop_path'] as String?,
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      originalName: json['original_name'] as String,
      overview: json['overview'] as String,
      posterPath: json['poster_path'] as String?,
      adult: json['adult'] as bool,
      genreIds: (json['genre_ids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      originCountry: (json['origin_country'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      originalLanguage: json['original_language'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      firstAirDate: json['first_air_date'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
      voteCount: (json['vote_count'] as num).toInt(),
      $type: json['media_type'] as String?,
    );

Map<String, dynamic> _$$SearchResultModelTvImplToJson(
        _$SearchResultModelTvImpl instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'name': instance.name,
      'original_name': instance.originalName,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'adult': instance.adult,
      'genre_ids': instance.genreIds,
      'origin_country': instance.originCountry,
      'original_language': instance.originalLanguage,
      'popularity': instance.popularity,
      'first_air_date': instance.firstAirDate,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'media_type': instance.$type,
    };

_$SearchResultModelPersonImpl _$$SearchResultModelPersonImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchResultModelPersonImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      originalName: json['original_name'] as String,
      adult: json['adult'] as bool,
      popularity: (json['popularity'] as num).toDouble(),
      gender: (json['gender'] as num).toInt(),
      knownForDepartment: json['known_for_department'] as String,
      profilePath: json['profile_path'] as String?,
      $type: json['media_type'] as String?,
    );

Map<String, dynamic> _$$SearchResultModelPersonImplToJson(
        _$SearchResultModelPersonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'original_name': instance.originalName,
      'adult': instance.adult,
      'popularity': instance.popularity,
      'gender': instance.gender,
      'known_for_department': instance.knownForDepartment,
      'profile_path': instance.profilePath,
      'media_type': instance.$type,
    };
