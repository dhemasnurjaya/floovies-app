import 'package:floovies/core/error/failure.dart';
import 'package:floovies/features/movies/data/data_sources/remote/tmdb_remote_data_source.dart';
import 'package:floovies/features/movies/data/models/paged_response_model.dart';
import 'package:floovies/features/movies/data/models/search_result_model.dart';
import 'package:floovies/features/movies/data/repositories/tmdb_repository_impl.dart';
import 'package:floovies/features/movies/domain/entities/paged_response.dart';
import 'package:floovies/features/movies/domain/entities/search_result.dart';
import 'package:floovies/features/movies/domain/repositories/tmdb_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockTmdbRemoteDataSource extends Mock implements TmdbRemoteDataSource {}

void main() {
  late MockTmdbRemoteDataSource mockTmdbRemoteDataSource;
  late TmdbRepository repository;

  setUp(() {
    mockTmdbRemoteDataSource = MockTmdbRemoteDataSource();
    repository = TmdbRepositoryImpl(remoteDataSource: mockTmdbRemoteDataSource);
  });

  group('getMultiSearchResult', () {
    test('should return Right(PagedResponse<SearchResult>) on success',
        () async {
      // arrange
      const tSearchQuery = 'john';
      final tResponseModel = PagedResponseModel<SearchResultModel>(
        page: 1,
        totalPages: 1,
        totalResults: 1,
        results: [
          SearchResultModel.movie(
            backdropPath: '/backdropPath',
            id: 1,
            title: 'title',
            originalTitle: 'originalTitle',
            overview: 'overview',
            posterPath: '/posterPath',
            adult: false,
            genreIds: [1],
            originalLanguage: 'originalLanguage',
            popularity: 1.0,
            releaseDate: 'releaseDate',
            video: false,
            voteAverage: 1.0,
            voteCount: 1,
          ),
        ],
      );

      when(() => mockTmdbRemoteDataSource.getMultiSearchResult(
            searchQuery: tSearchQuery,
            includeAdult: any(named: 'includeAdult'),
            page: any(named: 'page'),
          )).thenAnswer((_) async => tResponseModel);

      // act
      final result =
          await repository.getMultiSearchResult(searchQuery: tSearchQuery);

      // assert
      final tResult = PagedResponse<SearchResult>(
        page: tResponseModel.page,
        totalPages: tResponseModel.totalPages,
        totalResults: tResponseModel.totalResults,
        results: tResponseModel.results
            .map<SearchResult>((e) => SearchResult.fromModel(e))
            .toList(),
      );
      expect(result, Right(tResult));
      verify(() => mockTmdbRemoteDataSource.getMultiSearchResult(
            searchQuery: tSearchQuery,
            includeAdult: any(named: 'includeAdult'),
            page: any(named: 'page'),
          ));
    });

    test('should return Left(UnknownFailure) on exception', () async {
      // arrange
      const tSearchQuery = 'john';
      final tException = Exception('error');
      when(() => mockTmdbRemoteDataSource.getMultiSearchResult(
            searchQuery: tSearchQuery,
            includeAdult: any(named: 'includeAdult'),
            page: any(named: 'page'),
          )).thenThrow(tException);

      // act
      final result =
          await repository.getMultiSearchResult(searchQuery: tSearchQuery);

      // assert
      expect(
          result,
          Left(UnknownFailure(
            message: tException.toString(),
            cause: tException,
          )));
      verify(() => mockTmdbRemoteDataSource.getMultiSearchResult(
            searchQuery: tSearchQuery,
            includeAdult: any(named: 'includeAdult'),
            page: any(named: 'page'),
          ));
    });
  });
}
