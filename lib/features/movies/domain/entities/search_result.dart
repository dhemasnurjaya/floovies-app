import 'package:floovies/features/movies/data/models/search_result_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_result.freezed.dart';

@Freezed(unionKey: 'mediaType')
class SearchResult with _$SearchResult {
  @FreezedUnionValue('movie')
  const factory SearchResult.movie({
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
  }) = _SearchResultMovie;

  @FreezedUnionValue('tv')
  const factory SearchResult.tv({
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
  }) = _SearchResultTv;

  @FreezedUnionValue('person')
  const factory SearchResult.person({
    required int id,
    required String name,
    required String originalName,
    required bool adult,
    required double popularity,
    required int gender,
    required String knownForDepartment,
    required String? profilePath,
  }) = _SearchResultPerson;

  static SearchResult fromModel(SearchResultModel model) {
    return model.when(
      movie: (
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
        voteCount,
      ) {
        return SearchResult.movie(
          backdropPath: backdropPath,
          id: id,
          title: title,
          originalTitle: originalTitle,
          overview: overview,
          posterPath: posterPath,
          adult: adult,
          genreIds: genreIds,
          originalLanguage: originalLanguage,
          popularity: popularity,
          releaseDate: releaseDate,
          video: video,
          voteAverage: voteAverage,
          voteCount: voteCount,
        );
      },
      tv: (
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
        voteCount,
      ) {
        return SearchResult.tv(
          backdropPath: backdropPath,
          id: id,
          name: name,
          originalName: originalName,
          overview: overview,
          posterPath: posterPath,
          adult: adult,
          genreIds: genreIds,
          originCountry: originCountry,
          originalLanguage: originalLanguage,
          popularity: popularity,
          firstAirDate: firstAirDate,
          voteAverage: voteAverage,
          voteCount: voteCount,
        );
      },
      person: (
        id,
        name,
        originalName,
        adult,
        popularity,
        gender,
        knownForDepartment,
        profilePath,
      ) {
        return SearchResult.person(
          id: id,
          name: name,
          originalName: originalName,
          adult: adult,
          popularity: popularity,
          gender: gender,
          knownForDepartment: knownForDepartment,
          profilePath: profilePath,
        );
      },
    );
  }
}
