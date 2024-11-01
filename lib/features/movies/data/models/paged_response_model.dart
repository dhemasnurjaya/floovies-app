import 'package:freezed_annotation/freezed_annotation.dart';

part 'paged_response_model.freezed.dart';
part 'paged_response_model.g.dart';

@Freezed(genericArgumentFactories: true)
class PagedResponseModel<T> with _$PagedResponseModel<T> {
  const factory PagedResponseModel({
    required int page,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'total_results') required int totalResults,
    required List<T> results,
  }) = _PagedResponseModel;

  factory PagedResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$PagedResponseModelFromJson(json, fromJsonT);
}
