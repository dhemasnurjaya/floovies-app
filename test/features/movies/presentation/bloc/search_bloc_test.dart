import 'package:floovies/core/error/failure.dart';
import 'package:floovies/features/movies/domain/entities/paged_response.dart';
import 'package:floovies/features/movies/domain/entities/search_result.dart';
import 'package:floovies/features/movies/domain/use_cases/search_all.dart';
import 'package:floovies/features/movies/presentation/bloc/search_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockSearchAll extends Mock implements SearchAll {}

void main() {
  late MockSearchAll mockSearchAll;
  late SearchBloc bloc;

  setUp(() {
    mockSearchAll = MockSearchAll();
    bloc = SearchBloc(searchAll: mockSearchAll);

    registerFallbackValue(SearchAllParams(query: 'test'));
  });

  test('initial state should be SearchInitialState', () {
    expect(bloc.state, const SearchInitialState());
  });

  group('SearchQueryChangedEvent', () {
    const tQuery = 'john';
    const tIncludeAdult = false;
    const tPage = 1;

    test('should emit [SearchLoadingState, SearchLoadedState] when success',
        () {
      // arrange
      final tPagedResponse = PagedResponse<SearchResult>(
        page: 1,
        totalPages: 1,
        totalResults: 1,
        results: [
          SearchResult.movie(
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

      when(() => mockSearchAll(any()))
          .thenAnswer((_) async => Right(tPagedResponse));

      // assert later
      final expected = [
        const SearchLoadingState(),
        SearchLoadedState(searchResult: tPagedResponse),
      ];
      expectLater(bloc.stream, emitsInOrder(expected));

      // act
      bloc.add(SearchQueryChangedEvent(
        query: tQuery,
        includeAdult: tIncludeAdult,
        page: tPage,
      ));
    });

    test('should emit [SearchLoadingState, SearchErrorState] when failure', () {
      // arrange
      final tFailure = UnknownFailure(message: 'error');
      when(() => mockSearchAll(any())).thenAnswer((_) async => Left(tFailure));

      // assert later
      final expected = [
        const SearchLoadingState(),
        SearchErrorState(message: tFailure.message, cause: tFailure.cause),
      ];
      expectLater(bloc.stream, emitsInOrder(expected));

      // act
      bloc.add(SearchQueryChangedEvent(
        query: tQuery,
        includeAdult: tIncludeAdult,
        page: tPage,
      ));
    });
  });
}
