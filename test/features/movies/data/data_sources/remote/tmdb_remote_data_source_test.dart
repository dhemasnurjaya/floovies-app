import 'package:floovies/core/env.dart';
import 'package:floovies/core/network/network.dart';
import 'package:floovies/features/movies/data/data_sources/remote/tmdb_remote_data_source.dart';
import 'package:floovies/features/movies/data/models/search_result_model.dart';
import 'package:floovies/features/movies/data/models/paged_response_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../_responses/_response.dart';

class MockEnv extends Mock implements Env {}

class MockNetwork extends Mock implements Network {}

void main() {
  late MockEnv mockEnv;
  late MockNetwork mockNetwork;
  late TmdbRemoteDataSource dataSource;

  setUp(() {
    mockEnv = MockEnv();
    mockNetwork = MockNetwork();
    dataSource = TmdbRemoteDataSourceImpl(
      env: mockEnv,
      network: mockNetwork,
    );

    registerFallbackValue(Uri());
  });

  group('getMultiSearchResult', () {
    test('should return PagedResponseModel<SearchResultModel>', () async {
      // Arrange
      const tSearchQuery = 'john';
      final tResponse = readResponse('multi_search');

      when(() => mockEnv.tmdbApiScheme).thenReturn('https');
      when(() => mockEnv.tmdbApiHost).thenReturn('api.themoviedb.org');
      when(() => mockEnv.tmdbApiPort).thenReturn(443);
      when(() => mockNetwork.post(any(), body: any(named: 'body')))
          .thenAnswer((_) async => tResponse);

      // Act
      final result =
          await dataSource.getMultiSearchResult(searchQuery: tSearchQuery);

      // Assert
      expect(result, isA<PagedResponseModel<SearchResultModel>>());
    });
  });
}
