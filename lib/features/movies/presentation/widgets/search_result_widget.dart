import 'package:floovies/features/movies/domain/entities/search_result.dart';
import 'package:flutter/material.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget(
    this.searchResult, {
    super.key,
  });

  final SearchResult searchResult;

  @override
  Widget build(BuildContext context) {
    final widget = searchResult.when(
      movie: _buildMovieItem,
      tv: _buildTvItem,
      person: _buildPersonItem,
    );

    return widget;
  }

  Widget _buildMovieItem(
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
    int voteCount,
  ) {
    final releaseYear =
        releaseDate.isNotEmpty ? releaseDate.substring(0, 4) : '';
    return ListTile(
      title: Text('$title ${releaseYear.isNotEmpty ? '($releaseYear)' : ''}'),
      subtitle: Text('Movie'),
    );
  }

  Widget _buildTvItem(
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
    int voteCount,
  ) {
    return ListTile(
      title: Text(name),
      subtitle: Text('TV Show'),
    );
  }

  Widget _buildPersonItem(
    int id,
    String name,
    String originalName,
    bool adult,
    double popularity,
    int gender,
    String knownForDepartment,
    String? profilePath,
  ) {
    return ListTile(
      title: Text(name),
      subtitle: Text('Person'),
    );
  }
}
