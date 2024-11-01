import 'package:floovies/features/movies/domain/entities/paged_response.dart';
import 'package:floovies/features/movies/domain/entities/search_result.dart';
import 'package:floovies/features/movies/domain/repositories/tmdb_repository.dart';
import 'package:floovies/features/movies/domain/use_cases/search_all.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockTmdbRepository extends Mock implements TmdbRepository {}

void main() {
  late MockTmdbRepository mockTmdbRepository;
  late SearchAll searchAll;

  setUp(() {
    mockTmdbRepository = MockTmdbRepository();
    searchAll = SearchAll(mockTmdbRepository);
  });

  test('should call getMultiSearchResult from repository', () async {
    // arrange
    const tSearchQuery = 'john';
    const tSearchAllParams = SearchAllParams(query: tSearchQuery);
    final tPagedResponse = PagedResponse<SearchResult>(
      page: 1,
      totalPages: 1,
      totalResults: 1,
      results: [],
    );
    when(() => mockTmdbRepository.getMultiSearchResult(
          searchQuery: any(named: 'searchQuery'),
          includeAdult: any(named: 'includeAdult'),
          page: any(named: 'page'),
        )).thenAnswer((_) async => Right(tPagedResponse));

    // act
    await searchAll(tSearchAllParams);

    // assert
    verify(() => mockTmdbRepository.getMultiSearchResult(
          searchQuery: tSearchQuery,
          includeAdult: any(named: 'includeAdult'),
          page: any(named: 'page'),
        ));
  });
}
