import 'package:freezed_annotation/freezed_annotation.dart';

part 'multi_search_model.freezed.dart';
part 'multi_search_model.g.dart';

@Freezed(unionKey: 'media_type')
class SearchResultModel with _$SearchResultModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SearchResultModel.movie({
    required String backdropPath,
    required int id,
    required String title,
    required String originalTitle,
    required String overview,
    required String? posterPath,
    required bool adult,
    required List<int> genreIds,
    required String originalLanguage,
    required double popularity,
    required String releaseDate,
    required bool video,
    required double voteAverage,
    required int voteCount,
  }) = _SearchResultModelMovie;

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SearchResultModel.tv({
    required String? backdropPath,
    required int id,
    required String name,
    required String originalName,
    required String overview,
    required String? posterPath,
    required bool adult,
    required List<int> genreIds,
    required List<String> originCountry,
    required String originalLanguage,
    required double popularity,
    required String firstAirDate,
    required double voteAverage,
    required int voteCount,
  }) = _SearchResultModelTv;

  // TODO: add known_for field
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SearchResultModel.person({
    required int id,
    required String name,
    required String originalName,
    required bool adult,
    required double popularity,
    required int gender,
    required String knownForDepartment,
    required String? profilePath,
  }) = _SearchResultModelPerson;

  factory SearchResultModel.fromJson(Map<String, dynamic> json) =>
      _$SearchResultModelFromJson(json);
}
