import 'package:floovies/core/error/failure.dart';
import 'package:floovies/features/movies/domain/entities/paged_response.dart';
import 'package:floovies/features/movies/domain/entities/search_result.dart';
import 'package:fpdart/fpdart.dart';

abstract class TmdbRepository {
  Future<Either<Failure, PagedResponse<SearchResult>>> getMultiSearchResult({
    required String searchQuery,
    bool includeAdult = false,
    int page = 1,
  });
}
