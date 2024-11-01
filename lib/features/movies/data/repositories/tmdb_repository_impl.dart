import 'package:floovies/core/error/failure.dart';
import 'package:floovies/features/movies/data/data_sources/remote/tmdb_remote_data_source.dart';
import 'package:floovies/features/movies/domain/entities/paged_response.dart';
import 'package:floovies/features/movies/domain/entities/search_result.dart';
import 'package:floovies/features/movies/domain/repositories/tmdb_repository.dart';
import 'package:fpdart/fpdart.dart';

class TmdbRepositoryImpl extends TmdbRepository {
  TmdbRepositoryImpl({
    required this.remoteDataSource,
  });

  final TmdbRemoteDataSource remoteDataSource;

  @override
  Future<Either<Failure, PagedResponse<SearchResult>>> getMultiSearchResult({
    required String searchQuery,
    bool includeAdult = false,
    int page = 1,
  }) async {
    try {
      final result = await remoteDataSource.getMultiSearchResult(
        searchQuery: searchQuery,
        includeAdult: includeAdult,
        page: page,
      );

      final pagedResponse = PagedResponse<SearchResult>(
        page: result.page,
        totalPages: result.totalPages,
        totalResults: result.totalResults,
        results: result.results
            .map<SearchResult>((e) => SearchResult.fromModel(e))
            .toList(),
      );

      return Right(pagedResponse);
    } on Exception catch (e) {
      return Left(UnknownFailure(
        message: e.toString(),
        cause: e,
      ));
    }
  }
}
