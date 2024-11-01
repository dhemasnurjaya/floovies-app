import 'package:equatable/equatable.dart';
import 'package:floovies/core/domain/use_case.dart';
import 'package:floovies/core/error/failure.dart';
import 'package:floovies/features/movies/domain/entities/paged_response.dart';
import 'package:floovies/features/movies/domain/entities/search_result.dart';
import 'package:floovies/features/movies/domain/repositories/tmdb_repository.dart';
import 'package:fpdart/fpdart.dart';

class SearchAll extends UseCase<PagedResponse<SearchResult>, SearchAllParams> {
  final TmdbRepository repository;

  SearchAll(this.repository);

  @override
  Future<Either<Failure, PagedResponse<SearchResult>>> call(
    SearchAllParams params,
  ) {
    return repository.getMultiSearchResult(
      searchQuery: params.searchQuery,
      includeAdult: params.includeAdult,
      page: params.page,
    );
  }
}

class SearchAllParams extends Equatable {
  final String searchQuery;
  final bool includeAdult;
  final int page;

  const SearchAllParams({
    required this.searchQuery,
    this.includeAdult = false,
    this.page = 1,
  });

  @override
  List<Object?> get props => [searchQuery, includeAdult, page];
}
