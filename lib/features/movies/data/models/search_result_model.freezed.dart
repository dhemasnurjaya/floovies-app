// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchResultModel _$SearchResultModelFromJson(Map<String, dynamic> json) {
  switch (json['media_type']) {
    case 'movie':
      return _SearchResultModelMovie.fromJson(json);
    case 'tv':
      return _SearchResultModelTv.fromJson(json);
    case 'person':
      return _SearchResultModelPerson.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'media_type', 'SearchResultModel',
          'Invalid union type "${json['media_type']}"!');
  }
}

/// @nodoc
mixin _$SearchResultModel {
  int get id => throw _privateConstructorUsedError;
  bool get adult => throw _privateConstructorUsedError;
  double get popularity => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? backdropPath,
            int id,
            String title,
            String originalTitle,
            String overview,
            String? posterPath,
            bool adult,
            List<int> genreIds,
            String originalLanguage,
            double popularity,
            String releaseDate,
            bool video,
            double voteAverage,
            int voteCount)
        movie,
    required TResult Function(
            String? backdropPath,
            int id,
            String name,
            String originalName,
            String overview,
            String? posterPath,
            bool adult,
            List<int> genreIds,
            List<String> originCountry,
            String originalLanguage,
            double popularity,
            String firstAirDate,
            double voteAverage,
            int voteCount)
        tv,
    required TResult Function(
            int id,
            String name,
            String originalName,
            bool adult,
            double popularity,
            int gender,
            String knownForDepartment,
            String? profilePath)
        person,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? backdropPath,
            int id,
            String title,
            String originalTitle,
            String overview,
            String? posterPath,
            bool adult,
            List<int> genreIds,
            String originalLanguage,
            double popularity,
            String releaseDate,
            bool video,
            double voteAverage,
            int voteCount)?
        movie,
    TResult? Function(
            String? backdropPath,
            int id,
            String name,
            String originalName,
            String overview,
            String? posterPath,
            bool adult,
            List<int> genreIds,
            List<String> originCountry,
            String originalLanguage,
            double popularity,
            String firstAirDate,
            double voteAverage,
            int voteCount)?
        tv,
    TResult? Function(
            int id,
            String name,
            String originalName,
            bool adult,
            double popularity,
            int gender,
            String knownForDepartment,
            String? profilePath)?
        person,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? backdropPath,
            int id,
            String title,
            String originalTitle,
            String overview,
            String? posterPath,
            bool adult,
            List<int> genreIds,
            String originalLanguage,
            double popularity,
            String releaseDate,
            bool video,
            double voteAverage,
            int voteCount)?
        movie,
    TResult Function(
            String? backdropPath,
            int id,
            String name,
            String originalName,
            String overview,
            String? posterPath,
            bool adult,
            List<int> genreIds,
            List<String> originCountry,
            String originalLanguage,
            double popularity,
            String firstAirDate,
            double voteAverage,
            int voteCount)?
        tv,
    TResult Function(
            int id,
            String name,
            String originalName,
            bool adult,
            double popularity,
            int gender,
            String knownForDepartment,
            String? profilePath)?
        person,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchResultModelMovie value) movie,
    required TResult Function(_SearchResultModelTv value) tv,
    required TResult Function(_SearchResultModelPerson value) person,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchResultModelMovie value)? movie,
    TResult? Function(_SearchResultModelTv value)? tv,
    TResult? Function(_SearchResultModelPerson value)? person,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchResultModelMovie value)? movie,
    TResult Function(_SearchResultModelTv value)? tv,
    TResult Function(_SearchResultModelPerson value)? person,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this SearchResultModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchResultModelCopyWith<SearchResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultModelCopyWith<$Res> {
  factory $SearchResultModelCopyWith(
          SearchResultModel value, $Res Function(SearchResultModel) then) =
      _$SearchResultModelCopyWithImpl<$Res, SearchResultModel>;
  @useResult
  $Res call({int id, bool adult, double popularity});
}

/// @nodoc
class _$SearchResultModelCopyWithImpl<$Res, $Val extends SearchResultModel>
    implements $SearchResultModelCopyWith<$Res> {
  _$SearchResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? adult = null,
    Object? popularity = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchResultModelMovieImplCopyWith<$Res>
    implements $SearchResultModelCopyWith<$Res> {
  factory _$$SearchResultModelMovieImplCopyWith(
          _$SearchResultModelMovieImpl value,
          $Res Function(_$SearchResultModelMovieImpl) then) =
      __$$SearchResultModelMovieImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? backdropPath,
      int id,
      String title,
      String originalTitle,
      String overview,
      String? posterPath,
      bool adult,
      List<int> genreIds,
      String originalLanguage,
      double popularity,
      String releaseDate,
      bool video,
      double voteAverage,
      int voteCount});
}

/// @nodoc
class __$$SearchResultModelMovieImplCopyWithImpl<$Res>
    extends _$SearchResultModelCopyWithImpl<$Res, _$SearchResultModelMovieImpl>
    implements _$$SearchResultModelMovieImplCopyWith<$Res> {
  __$$SearchResultModelMovieImplCopyWithImpl(
      _$SearchResultModelMovieImpl _value,
      $Res Function(_$SearchResultModelMovieImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdropPath = freezed,
    Object? id = null,
    Object? title = null,
    Object? originalTitle = null,
    Object? overview = null,
    Object? posterPath = freezed,
    Object? adult = null,
    Object? genreIds = null,
    Object? originalLanguage = null,
    Object? popularity = null,
    Object? releaseDate = null,
    Object? video = null,
    Object? voteAverage = null,
    Object? voteCount = null,
  }) {
    return _then(_$SearchResultModelMovieImpl(
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      genreIds: null == genreIds
          ? _value._genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$SearchResultModelMovieImpl implements _SearchResultModelMovie {
  const _$SearchResultModelMovieImpl(
      {required this.backdropPath,
      required this.id,
      required this.title,
      required this.originalTitle,
      required this.overview,
      required this.posterPath,
      required this.adult,
      required final List<int> genreIds,
      required this.originalLanguage,
      required this.popularity,
      required this.releaseDate,
      required this.video,
      required this.voteAverage,
      required this.voteCount,
      final String? $type})
      : _genreIds = genreIds,
        $type = $type ?? 'movie';

  factory _$SearchResultModelMovieImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResultModelMovieImplFromJson(json);

  @override
  final String? backdropPath;
  @override
  final int id;
  @override
  final String title;
  @override
  final String originalTitle;
  @override
  final String overview;
  @override
  final String? posterPath;
  @override
  final bool adult;
  final List<int> _genreIds;
  @override
  List<int> get genreIds {
    if (_genreIds is EqualUnmodifiableListView) return _genreIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genreIds);
  }

  @override
  final String originalLanguage;
  @override
  final double popularity;
  @override
  final String releaseDate;
  @override
  final bool video;
  @override
  final double voteAverage;
  @override
  final int voteCount;

  @JsonKey(name: 'media_type')
  final String $type;

  @override
  String toString() {
    return 'SearchResultModel.movie(backdropPath: $backdropPath, id: $id, title: $title, originalTitle: $originalTitle, overview: $overview, posterPath: $posterPath, adult: $adult, genreIds: $genreIds, originalLanguage: $originalLanguage, popularity: $popularity, releaseDate: $releaseDate, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultModelMovieImpl &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.adult, adult) || other.adult == adult) &&
            const DeepCollectionEquality().equals(other._genreIds, _genreIds) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      backdropPath,
      id,
      title,
      originalTitle,
      overview,
      posterPath,
      adult,
      const DeepCollectionEquality().hash(_genreIds),
      originalLanguage,
      popularity,
      releaseDate,
      video,
      voteAverage,
      voteCount);

  /// Create a copy of SearchResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultModelMovieImplCopyWith<_$SearchResultModelMovieImpl>
      get copyWith => __$$SearchResultModelMovieImplCopyWithImpl<
          _$SearchResultModelMovieImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? backdropPath,
            int id,
            String title,
            String originalTitle,
            String overview,
            String? posterPath,
            bool adult,
            List<int> genreIds,
            String originalLanguage,
            double popularity,
            String releaseDate,
            bool video,
            double voteAverage,
            int voteCount)
        movie,
    required TResult Function(
            String? backdropPath,
            int id,
            String name,
            String originalName,
            String overview,
            String? posterPath,
            bool adult,
            List<int> genreIds,
            List<String> originCountry,
            String originalLanguage,
            double popularity,
            String firstAirDate,
            double voteAverage,
            int voteCount)
        tv,
    required TResult Function(
            int id,
            String name,
            String originalName,
            bool adult,
            double popularity,
            int gender,
            String knownForDepartment,
            String? profilePath)
        person,
  }) {
    return movie(
        backdropPath,
        id,
        title,
        originalTitle,
        overview,
        posterPath,
        adult,
        genreIds,
        originalLanguage,
        popularity,
        releaseDate,
        video,
        voteAverage,
        voteCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? backdropPath,
            int id,
            String title,
            String originalTitle,
            String overview,
            String? posterPath,
            bool adult,
            List<int> genreIds,
            String originalLanguage,
            double popularity,
            String releaseDate,
            bool video,
            double voteAverage,
            int voteCount)?
        movie,
    TResult? Function(
            String? backdropPath,
            int id,
            String name,
            String originalName,
            String overview,
            String? posterPath,
            bool adult,
            List<int> genreIds,
            List<String> originCountry,
            String originalLanguage,
            double popularity,
            String firstAirDate,
            double voteAverage,
            int voteCount)?
        tv,
    TResult? Function(
            int id,
            String name,
            String originalName,
            bool adult,
            double popularity,
            int gender,
            String knownForDepartment,
            String? profilePath)?
        person,
  }) {
    return movie?.call(
        backdropPath,
        id,
        title,
        originalTitle,
        overview,
        posterPath,
        adult,
        genreIds,
        originalLanguage,
        popularity,
        releaseDate,
        video,
        voteAverage,
        voteCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? backdropPath,
            int id,
            String title,
            String originalTitle,
            String overview,
            String? posterPath,
            bool adult,
            List<int> genreIds,
            String originalLanguage,
            double popularity,
            String releaseDate,
            bool video,
            double voteAverage,
            int voteCount)?
        movie,
    TResult Function(
            String? backdropPath,
            int id,
            String name,
            String originalName,
            String overview,
            String? posterPath,
            bool adult,
            List<int> genreIds,
            List<String> originCountry,
            String originalLanguage,
            double popularity,
            String firstAirDate,
            double voteAverage,
            int voteCount)?
        tv,
    TResult Function(
            int id,
            String name,
            String originalName,
            bool adult,
            double popularity,
            int gender,
            String knownForDepartment,
            String? profilePath)?
        person,
    required TResult orElse(),
  }) {
    if (movie != null) {
      return movie(
          backdropPath,
          id,
          title,
          originalTitle,
          overview,
          posterPath,
          adult,
          genreIds,
          originalLanguage,
          popularity,
          releaseDate,
          video,
          voteAverage,
          voteCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchResultModelMovie value) movie,
    required TResult Function(_SearchResultModelTv value) tv,
    required TResult Function(_SearchResultModelPerson value) person,
  }) {
    return movie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchResultModelMovie value)? movie,
    TResult? Function(_SearchResultModelTv value)? tv,
    TResult? Function(_SearchResultModelPerson value)? person,
  }) {
    return movie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchResultModelMovie value)? movie,
    TResult Function(_SearchResultModelTv value)? tv,
    TResult Function(_SearchResultModelPerson value)? person,
    required TResult orElse(),
  }) {
    if (movie != null) {
      return movie(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResultModelMovieImplToJson(
      this,
    );
  }
}

abstract class _SearchResultModelMovie implements SearchResultModel {
  const factory _SearchResultModelMovie(
      {required final String? backdropPath,
      required final int id,
      required final String title,
      required final String originalTitle,
      required final String overview,
      required final String? posterPath,
      required final bool adult,
      required final List<int> genreIds,
      required final String originalLanguage,
      required final double popularity,
      required final String releaseDate,
      required final bool video,
      required final double voteAverage,
      required final int voteCount}) = _$SearchResultModelMovieImpl;

  factory _SearchResultModelMovie.fromJson(Map<String, dynamic> json) =
      _$SearchResultModelMovieImpl.fromJson;

  String? get backdropPath;
  @override
  int get id;
  String get title;
  String get originalTitle;
  String get overview;
  String? get posterPath;
  @override
  bool get adult;
  List<int> get genreIds;
  String get originalLanguage;
  @override
  double get popularity;
  String get releaseDate;
  bool get video;
  double get voteAverage;
  int get voteCount;

  /// Create a copy of SearchResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchResultModelMovieImplCopyWith<_$SearchResultModelMovieImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchResultModelTvImplCopyWith<$Res>
    implements $SearchResultModelCopyWith<$Res> {
  factory _$$SearchResultModelTvImplCopyWith(_$SearchResultModelTvImpl value,
          $Res Function(_$SearchResultModelTvImpl) then) =
      __$$SearchResultModelTvImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? backdropPath,
      int id,
      String name,
      String originalName,
      String overview,
      String? posterPath,
      bool adult,
      List<int> genreIds,
      List<String> originCountry,
      String originalLanguage,
      double popularity,
      String firstAirDate,
      double voteAverage,
      int voteCount});
}

/// @nodoc
class __$$SearchResultModelTvImplCopyWithImpl<$Res>
    extends _$SearchResultModelCopyWithImpl<$Res, _$SearchResultModelTvImpl>
    implements _$$SearchResultModelTvImplCopyWith<$Res> {
  __$$SearchResultModelTvImplCopyWithImpl(_$SearchResultModelTvImpl _value,
      $Res Function(_$SearchResultModelTvImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdropPath = freezed,
    Object? id = null,
    Object? name = null,
    Object? originalName = null,
    Object? overview = null,
    Object? posterPath = freezed,
    Object? adult = null,
    Object? genreIds = null,
    Object? originCountry = null,
    Object? originalLanguage = null,
    Object? popularity = null,
    Object? firstAirDate = null,
    Object? voteAverage = null,
    Object? voteCount = null,
  }) {
    return _then(_$SearchResultModelTvImpl(
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      originalName: null == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      genreIds: null == genreIds
          ? _value._genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      originCountry: null == originCountry
          ? _value._originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as List<String>,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      firstAirDate: null == firstAirDate
          ? _value.firstAirDate
          : firstAirDate // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$SearchResultModelTvImpl implements _SearchResultModelTv {
  const _$SearchResultModelTvImpl(
      {required this.backdropPath,
      required this.id,
      required this.name,
      required this.originalName,
      required this.overview,
      required this.posterPath,
      required this.adult,
      required final List<int> genreIds,
      required final List<String> originCountry,
      required this.originalLanguage,
      required this.popularity,
      required this.firstAirDate,
      required this.voteAverage,
      required this.voteCount,
      final String? $type})
      : _genreIds = genreIds,
        _originCountry = originCountry,
        $type = $type ?? 'tv';

  factory _$SearchResultModelTvImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResultModelTvImplFromJson(json);

  @override
  final String? backdropPath;
  @override
  final int id;
  @override
  final String name;
  @override
  final String originalName;
  @override
  final String overview;
  @override
  final String? posterPath;
  @override
  final bool adult;
  final List<int> _genreIds;
  @override
  List<int> get genreIds {
    if (_genreIds is EqualUnmodifiableListView) return _genreIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genreIds);
  }

  final List<String> _originCountry;
  @override
  List<String> get originCountry {
    if (_originCountry is EqualUnmodifiableListView) return _originCountry;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_originCountry);
  }

  @override
  final String originalLanguage;
  @override
  final double popularity;
  @override
  final String firstAirDate;
  @override
  final double voteAverage;
  @override
  final int voteCount;

  @JsonKey(name: 'media_type')
  final String $type;

  @override
  String toString() {
    return 'SearchResultModel.tv(backdropPath: $backdropPath, id: $id, name: $name, originalName: $originalName, overview: $overview, posterPath: $posterPath, adult: $adult, genreIds: $genreIds, originCountry: $originCountry, originalLanguage: $originalLanguage, popularity: $popularity, firstAirDate: $firstAirDate, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultModelTvImpl &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.adult, adult) || other.adult == adult) &&
            const DeepCollectionEquality().equals(other._genreIds, _genreIds) &&
            const DeepCollectionEquality()
                .equals(other._originCountry, _originCountry) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.firstAirDate, firstAirDate) ||
                other.firstAirDate == firstAirDate) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      backdropPath,
      id,
      name,
      originalName,
      overview,
      posterPath,
      adult,
      const DeepCollectionEquality().hash(_genreIds),
      const DeepCollectionEquality().hash(_originCountry),
      originalLanguage,
      popularity,
      firstAirDate,
      voteAverage,
      voteCount);

  /// Create a copy of SearchResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultModelTvImplCopyWith<_$SearchResultModelTvImpl> get copyWith =>
      __$$SearchResultModelTvImplCopyWithImpl<_$SearchResultModelTvImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? backdropPath,
            int id,
            String title,
            String originalTitle,
            String overview,
            String? posterPath,
            bool adult,
            List<int> genreIds,
            String originalLanguage,
            double popularity,
            String releaseDate,
            bool video,
            double voteAverage,
            int voteCount)
        movie,
    required TResult Function(
            String? backdropPath,
            int id,
            String name,
            String originalName,
            String overview,
            String? posterPath,
            bool adult,
            List<int> genreIds,
            List<String> originCountry,
            String originalLanguage,
            double popularity,
            String firstAirDate,
            double voteAverage,
            int voteCount)
        tv,
    required TResult Function(
            int id,
            String name,
            String originalName,
            bool adult,
            double popularity,
            int gender,
            String knownForDepartment,
            String? profilePath)
        person,
  }) {
    return tv(
        backdropPath,
        id,
        name,
        originalName,
        overview,
        posterPath,
        adult,
        genreIds,
        originCountry,
        originalLanguage,
        popularity,
        firstAirDate,
        voteAverage,
        voteCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? backdropPath,
            int id,
            String title,
            String originalTitle,
            String overview,
            String? posterPath,
            bool adult,
            List<int> genreIds,
            String originalLanguage,
            double popularity,
            String releaseDate,
            bool video,
            double voteAverage,
            int voteCount)?
        movie,
    TResult? Function(
            String? backdropPath,
            int id,
            String name,
            String originalName,
            String overview,
            String? posterPath,
            bool adult,
            List<int> genreIds,
            List<String> originCountry,
            String originalLanguage,
            double popularity,
            String firstAirDate,
            double voteAverage,
            int voteCount)?
        tv,
    TResult? Function(
            int id,
            String name,
            String originalName,
            bool adult,
            double popularity,
            int gender,
            String knownForDepartment,
            String? profilePath)?
        person,
  }) {
    return tv?.call(
        backdropPath,
        id,
        name,
        originalName,
        overview,
        posterPath,
        adult,
        genreIds,
        originCountry,
        originalLanguage,
        popularity,
        firstAirDate,
        voteAverage,
        voteCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? backdropPath,
            int id,
            String title,
            String originalTitle,
            String overview,
            String? posterPath,
            bool adult,
            List<int> genreIds,
            String originalLanguage,
            double popularity,
            String releaseDate,
            bool video,
            double voteAverage,
            int voteCount)?
        movie,
    TResult Function(
            String? backdropPath,
            int id,
            String name,
            String originalName,
            String overview,
            String? posterPath,
            bool adult,
            List<int> genreIds,
            List<String> originCountry,
            String originalLanguage,
            double popularity,
            String firstAirDate,
            double voteAverage,
            int voteCount)?
        tv,
    TResult Function(
            int id,
            String name,
            String originalName,
            bool adult,
            double popularity,
            int gender,
            String knownForDepartment,
            String? profilePath)?
        person,
    required TResult orElse(),
  }) {
    if (tv != null) {
      return tv(
          backdropPath,
          id,
          name,
          originalName,
          overview,
          posterPath,
          adult,
          genreIds,
          originCountry,
          originalLanguage,
          popularity,
          firstAirDate,
          voteAverage,
          voteCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchResultModelMovie value) movie,
    required TResult Function(_SearchResultModelTv value) tv,
    required TResult Function(_SearchResultModelPerson value) person,
  }) {
    return tv(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchResultModelMovie value)? movie,
    TResult? Function(_SearchResultModelTv value)? tv,
    TResult? Function(_SearchResultModelPerson value)? person,
  }) {
    return tv?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchResultModelMovie value)? movie,
    TResult Function(_SearchResultModelTv value)? tv,
    TResult Function(_SearchResultModelPerson value)? person,
    required TResult orElse(),
  }) {
    if (tv != null) {
      return tv(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResultModelTvImplToJson(
      this,
    );
  }
}

abstract class _SearchResultModelTv implements SearchResultModel {
  const factory _SearchResultModelTv(
      {required final String? backdropPath,
      required final int id,
      required final String name,
      required final String originalName,
      required final String overview,
      required final String? posterPath,
      required final bool adult,
      required final List<int> genreIds,
      required final List<String> originCountry,
      required final String originalLanguage,
      required final double popularity,
      required final String firstAirDate,
      required final double voteAverage,
      required final int voteCount}) = _$SearchResultModelTvImpl;

  factory _SearchResultModelTv.fromJson(Map<String, dynamic> json) =
      _$SearchResultModelTvImpl.fromJson;

  String? get backdropPath;
  @override
  int get id;
  String get name;
  String get originalName;
  String get overview;
  String? get posterPath;
  @override
  bool get adult;
  List<int> get genreIds;
  List<String> get originCountry;
  String get originalLanguage;
  @override
  double get popularity;
  String get firstAirDate;
  double get voteAverage;
  int get voteCount;

  /// Create a copy of SearchResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchResultModelTvImplCopyWith<_$SearchResultModelTvImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchResultModelPersonImplCopyWith<$Res>
    implements $SearchResultModelCopyWith<$Res> {
  factory _$$SearchResultModelPersonImplCopyWith(
          _$SearchResultModelPersonImpl value,
          $Res Function(_$SearchResultModelPersonImpl) then) =
      __$$SearchResultModelPersonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String originalName,
      bool adult,
      double popularity,
      int gender,
      String knownForDepartment,
      String? profilePath});
}

/// @nodoc
class __$$SearchResultModelPersonImplCopyWithImpl<$Res>
    extends _$SearchResultModelCopyWithImpl<$Res, _$SearchResultModelPersonImpl>
    implements _$$SearchResultModelPersonImplCopyWith<$Res> {
  __$$SearchResultModelPersonImplCopyWithImpl(
      _$SearchResultModelPersonImpl _value,
      $Res Function(_$SearchResultModelPersonImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? originalName = null,
    Object? adult = null,
    Object? popularity = null,
    Object? gender = null,
    Object? knownForDepartment = null,
    Object? profilePath = freezed,
  }) {
    return _then(_$SearchResultModelPersonImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      originalName: null == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      knownForDepartment: null == knownForDepartment
          ? _value.knownForDepartment
          : knownForDepartment // ignore: cast_nullable_to_non_nullable
              as String,
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$SearchResultModelPersonImpl implements _SearchResultModelPerson {
  const _$SearchResultModelPersonImpl(
      {required this.id,
      required this.name,
      required this.originalName,
      required this.adult,
      required this.popularity,
      required this.gender,
      required this.knownForDepartment,
      required this.profilePath,
      final String? $type})
      : $type = $type ?? 'person';

  factory _$SearchResultModelPersonImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResultModelPersonImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String originalName;
  @override
  final bool adult;
  @override
  final double popularity;
  @override
  final int gender;
  @override
  final String knownForDepartment;
  @override
  final String? profilePath;

  @JsonKey(name: 'media_type')
  final String $type;

  @override
  String toString() {
    return 'SearchResultModel.person(id: $id, name: $name, originalName: $originalName, adult: $adult, popularity: $popularity, gender: $gender, knownForDepartment: $knownForDepartment, profilePath: $profilePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultModelPersonImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.knownForDepartment, knownForDepartment) ||
                other.knownForDepartment == knownForDepartment) &&
            (identical(other.profilePath, profilePath) ||
                other.profilePath == profilePath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, originalName, adult,
      popularity, gender, knownForDepartment, profilePath);

  /// Create a copy of SearchResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultModelPersonImplCopyWith<_$SearchResultModelPersonImpl>
      get copyWith => __$$SearchResultModelPersonImplCopyWithImpl<
          _$SearchResultModelPersonImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? backdropPath,
            int id,
            String title,
            String originalTitle,
            String overview,
            String? posterPath,
            bool adult,
            List<int> genreIds,
            String originalLanguage,
            double popularity,
            String releaseDate,
            bool video,
            double voteAverage,
            int voteCount)
        movie,
    required TResult Function(
            String? backdropPath,
            int id,
            String name,
            String originalName,
            String overview,
            String? posterPath,
            bool adult,
            List<int> genreIds,
            List<String> originCountry,
            String originalLanguage,
            double popularity,
            String firstAirDate,
            double voteAverage,
            int voteCount)
        tv,
    required TResult Function(
            int id,
            String name,
            String originalName,
            bool adult,
            double popularity,
            int gender,
            String knownForDepartment,
            String? profilePath)
        person,
  }) {
    return person(id, name, originalName, adult, popularity, gender,
        knownForDepartment, profilePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? backdropPath,
            int id,
            String title,
            String originalTitle,
            String overview,
            String? posterPath,
            bool adult,
            List<int> genreIds,
            String originalLanguage,
            double popularity,
            String releaseDate,
            bool video,
            double voteAverage,
            int voteCount)?
        movie,
    TResult? Function(
            String? backdropPath,
            int id,
            String name,
            String originalName,
            String overview,
            String? posterPath,
            bool adult,
            List<int> genreIds,
            List<String> originCountry,
            String originalLanguage,
            double popularity,
            String firstAirDate,
            double voteAverage,
            int voteCount)?
        tv,
    TResult? Function(
            int id,
            String name,
            String originalName,
            bool adult,
            double popularity,
            int gender,
            String knownForDepartment,
            String? profilePath)?
        person,
  }) {
    return person?.call(id, name, originalName, adult, popularity, gender,
        knownForDepartment, profilePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? backdropPath,
            int id,
            String title,
            String originalTitle,
            String overview,
            String? posterPath,
            bool adult,
            List<int> genreIds,
            String originalLanguage,
            double popularity,
            String releaseDate,
            bool video,
            double voteAverage,
            int voteCount)?
        movie,
    TResult Function(
            String? backdropPath,
            int id,
            String name,
            String originalName,
            String overview,
            String? posterPath,
            bool adult,
            List<int> genreIds,
            List<String> originCountry,
            String originalLanguage,
            double popularity,
            String firstAirDate,
            double voteAverage,
            int voteCount)?
        tv,
    TResult Function(
            int id,
            String name,
            String originalName,
            bool adult,
            double popularity,
            int gender,
            String knownForDepartment,
            String? profilePath)?
        person,
    required TResult orElse(),
  }) {
    if (person != null) {
      return person(id, name, originalName, adult, popularity, gender,
          knownForDepartment, profilePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchResultModelMovie value) movie,
    required TResult Function(_SearchResultModelTv value) tv,
    required TResult Function(_SearchResultModelPerson value) person,
  }) {
    return person(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchResultModelMovie value)? movie,
    TResult? Function(_SearchResultModelTv value)? tv,
    TResult? Function(_SearchResultModelPerson value)? person,
  }) {
    return person?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchResultModelMovie value)? movie,
    TResult Function(_SearchResultModelTv value)? tv,
    TResult Function(_SearchResultModelPerson value)? person,
    required TResult orElse(),
  }) {
    if (person != null) {
      return person(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResultModelPersonImplToJson(
      this,
    );
  }
}

abstract class _SearchResultModelPerson implements SearchResultModel {
  const factory _SearchResultModelPerson(
      {required final int id,
      required final String name,
      required final String originalName,
      required final bool adult,
      required final double popularity,
      required final int gender,
      required final String knownForDepartment,
      required final String? profilePath}) = _$SearchResultModelPersonImpl;

  factory _SearchResultModelPerson.fromJson(Map<String, dynamic> json) =
      _$SearchResultModelPersonImpl.fromJson;

  @override
  int get id;
  String get name;
  String get originalName;
  @override
  bool get adult;
  @override
  double get popularity;
  int get gender;
  String get knownForDepartment;
  String? get profilePath;

  /// Create a copy of SearchResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchResultModelPersonImplCopyWith<_$SearchResultModelPersonImpl>
      get copyWith => throw _privateConstructorUsedError;
}
