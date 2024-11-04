import 'dart:convert';
import 'dart:io';
import 'package:floovies/core/error/exception.dart';
import 'package:http/http.dart' as http;

/// Network interface
abstract class Network {
  /// GET data from uri
  Future<String> get(
    Uri uri, {
    Map<String, String>? headers,
  });

  /// POST data from uri
  Future<String> post(
    Uri uri, {
    String? body,
    Map<String, String>? headers,
  });
}

/// Network implementation
class NetworkImpl implements Network {
  NetworkImpl(http.Client httpClient) : _httpClient = httpClient;

  final http.Client _httpClient;

  @override
  Future<String> get(
    Uri uri, {
    Map<String, String>? headers,
  }) async {
    final response = await _httpClient.get(
      uri,
      headers: headers,
    );
    final stringResponse = utf8.decode(response.bodyBytes);

    if (response.statusCode == HttpStatus.unauthorized) {
      throw UnauthorizedException(stringResponse);
    }

    if (response.statusCode != HttpStatus.ok) {
      throw ServerException(stringResponse);
    }

    return stringResponse;
  }

  @override
  Future<String> post(
    Uri uri, {
    String? body,
    Map<String, String>? headers,
  }) async {
    // FIXME: error here, it says "FormatException: Filter error, bad data"
    final response = await _httpClient.post(
      uri,
      headers: headers,
      body: body, //!= null ? Uri.encodeComponent(body) : null,
    );
    final stringResponse = utf8.decode(response.bodyBytes);

    if (response.statusCode == HttpStatus.unauthorized) {
      throw UnauthorizedException(stringResponse);
    }

    if (response.statusCode != HttpStatus.ok) {
      throw ServerException(stringResponse);
    }

    return stringResponse;
  }
}
