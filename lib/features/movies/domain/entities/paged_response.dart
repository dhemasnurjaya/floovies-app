import 'package:freezed_annotation/freezed_annotation.dart';

part 'paged_response.freezed.dart';

@freezed
class PagedResponse<T> with _$PagedResponse<T> {
  const factory PagedResponse({
    required int page,
    required int totalPages,
    required int totalResults,
    required List<T> results,
  }) = _PagedResponse;
}
