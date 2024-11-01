import 'dart:convert';

import 'package:floovies/core/env.dart';
import 'package:floovies/core/network/network.dart';
import 'package:floovies/features/movies/data/models/paged_response_model.dart';
import 'package:floovies/features/movies/data/models/search_result_model.dart';

abstract class TmdbRemoteDataSource {
  Future<PagedResponseModel<SearchResultModel>> getMultiSearchResult({
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
  Future<PagedResponseModel<SearchResultModel>> getMultiSearchResult({
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
    return PagedResponseModel<SearchResultModel>.fromJson(
      jsonResponse,
      (json) => SearchResultModel.fromJson(json as Map<String, dynamic>),
    );
  }
}