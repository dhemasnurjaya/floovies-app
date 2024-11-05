import 'package:freezed_annotation/freezed_annotation.dart';

part 'tmdb_proxy_request_model.freezed.dart';
part 'tmdb_proxy_request_model.g.dart';

@freezed
class TmdbProxyRequestModel with _$TmdbProxyRequestModel {
  const factory TmdbProxyRequestModel({
    required String path,
    required Map<String, dynamic> queries,
  }) = _TmdbProxyRequestModel;

  factory TmdbProxyRequestModel.fromJson(Map<String, dynamic> json) =>
      _$TmdbProxyRequestModelFromJson(json);
}
