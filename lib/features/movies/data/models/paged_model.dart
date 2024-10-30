import 'package:freezed_annotation/freezed_annotation.dart';

part 'paged_model.freezed.dart';
part 'paged_model.g.dart';

@Freezed(genericArgumentFactories: true)
class PagedModel<T> with _$PagedModel<T> {
  factory PagedModel({
    required int page,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'total_results') required int totalResults,
    required List<T> results,
  }) = _PagedModel;

  factory PagedModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$PagedModelFromJson(json, fromJsonT);
}
