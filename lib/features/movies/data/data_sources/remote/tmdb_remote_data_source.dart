import 'dart:convert';

import 'package:floovies/core/env.dart';
import 'package:floovies/core/network/network.dart';
import 'package:floovies/features/movies/data/models/paged_model.dart';
import 'package:floovies/features/movies/data/models/multi_search_model.dart';

abstract class TmdbRemoteDataSource {
  Future<PagedModel<SearchResultModel>> getMultiSearchResult({
    required String searchQuery,
    bool includeAdult = false,
    int page = 1,
  });
}

class TmdbRemoteDataSourceImpl implements TmdbRemoteDataSource {
  final Env env;
  final Network network;

  TmdbRemoteDataSourceImpl({
    required this.env,
    required this.network,
  });

  @override
  Future<PagedModel<SearchResultModel>> getMultiSearchResult({
    required String searchQuery,
    bool includeAdult = false,
    int page = 1,
  }) async {
    final uri = Uri(
      scheme: env.tmdbApiScheme,
      host: env.tmdbApiHost,
      queryParameters: {
        'query': searchQuery,
        'include_adult': '$includeAdult',
        'page': '$page',
      },
    );
    final response = await network.get(uri);
    final jsonResponse = jsonDecode(response) as Map<String, dynamic>;
    return PagedModel<SearchResultModel>.fromJson(
      jsonResponse,
      (json) => SearchResultModel.fromJson(json as Map<String, dynamic>),
    );
  }
}
