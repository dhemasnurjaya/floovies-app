// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paged_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PagedResponse<T> {
  int get page => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get totalResults => throw _privateConstructorUsedError;
  List<T> get results => throw _privateConstructorUsedError;

  /// Create a copy of PagedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PagedResponseCopyWith<T, PagedResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagedResponseCopyWith<T, $Res> {
  factory $PagedResponseCopyWith(
          PagedResponse<T> value, $Res Function(PagedResponse<T>) then) =
      _$PagedResponseCopyWithImpl<T, $Res, PagedResponse<T>>;
  @useResult
  $Res call({int page, int totalPages, int totalResults, List<T> results});
}

/// @nodoc
class _$PagedResponseCopyWithImpl<T, $Res, $Val extends PagedResponse<T>>
    implements $PagedResponseCopyWith<T, $Res> {
  _$PagedResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PagedResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? totalPages = null,
    Object? totalResults = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PagedResponseImplCopyWith<T, $Res>
    implements $PagedResponseCopyWith<T, $Res> {
  factory _$$PagedResponseImplCopyWith(_$PagedResponseImpl<T> value,
          $Res Function(_$PagedResponseImpl<T>) then) =
      __$$PagedResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int page, int totalPages, int totalResults, List<T> results});
}

/// @nodoc
class __$$PagedResponseImplCopyWithImpl<T, $Res>
    extends _$PagedResponseCopyWithImpl<T, $Res, _$PagedResponseImpl<T>>
    implements _$$PagedResponseImplCopyWith<T, $Res> {
  __$$PagedResponseImplCopyWithImpl(_$PagedResponseImpl<T> _value,
      $Res Function(_$PagedResponseImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of PagedResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? totalPages = null,
    Object? totalResults = null,
    Object? results = null,
  }) {
    return _then(_$PagedResponseImpl<T>(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc

class _$PagedResponseImpl<T> implements _PagedResponse<T> {
  const _$PagedResponseImpl(
      {required this.page,
      required this.totalPages,
      required this.totalResults,
      required final List<T> results})
      : _results = results;

  @override
  final int page;
  @override
  final int totalPages;
  @override
  final int totalResults;
  final List<T> _results;
  @override
  List<T> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'PagedResponse<$T>(page: $page, totalPages: $totalPages, totalResults: $totalResults, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PagedResponseImpl<T> &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, totalPages, totalResults,
      const DeepCollectionEquality().hash(_results));

  /// Create a copy of PagedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PagedResponseImplCopyWith<T, _$PagedResponseImpl<T>> get copyWith =>
      __$$PagedResponseImplCopyWithImpl<T, _$PagedResponseImpl<T>>(
          this, _$identity);
}

abstract class _PagedResponse<T> implements PagedResponse<T> {
  const factory _PagedResponse(
      {required final int page,
      required final int totalPages,
      required final int totalResults,
      required final List<T> results}) = _$PagedResponseImpl<T>;

  @override
  int get page;
  @override
  int get totalPages;
  @override
  int get totalResults;
  @override
  List<T> get results;

  /// Create a copy of PagedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PagedResponseImplCopyWith<T, _$PagedResponseImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
