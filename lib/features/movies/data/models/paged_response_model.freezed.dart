// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paged_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PagedResponseModel<T> _$PagedResponseModelFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _PagedResponseModel<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$PagedResponseModel<T> {
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int get totalResults => throw _privateConstructorUsedError;
  List<T> get results => throw _privateConstructorUsedError;

  /// Serializes this PagedResponseModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of PagedResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PagedResponseModelCopyWith<T, PagedResponseModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagedResponseModelCopyWith<T, $Res> {
  factory $PagedResponseModelCopyWith(PagedResponseModel<T> value,
          $Res Function(PagedResponseModel<T>) then) =
      _$PagedResponseModelCopyWithImpl<T, $Res, PagedResponseModel<T>>;
  @useResult
  $Res call(
      {int page,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults,
      List<T> results});
}

/// @nodoc
class _$PagedResponseModelCopyWithImpl<T, $Res,
        $Val extends PagedResponseModel<T>>
    implements $PagedResponseModelCopyWith<T, $Res> {
  _$PagedResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PagedResponseModel
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
abstract class _$$PagedResponseModelImplCopyWith<T, $Res>
    implements $PagedResponseModelCopyWith<T, $Res> {
  factory _$$PagedResponseModelImplCopyWith(_$PagedResponseModelImpl<T> value,
          $Res Function(_$PagedResponseModelImpl<T>) then) =
      __$$PagedResponseModelImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {int page,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults,
      List<T> results});
}

/// @nodoc
class __$$PagedResponseModelImplCopyWithImpl<T, $Res>
    extends _$PagedResponseModelCopyWithImpl<T, $Res,
        _$PagedResponseModelImpl<T>>
    implements _$$PagedResponseModelImplCopyWith<T, $Res> {
  __$$PagedResponseModelImplCopyWithImpl(_$PagedResponseModelImpl<T> _value,
      $Res Function(_$PagedResponseModelImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of PagedResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? totalPages = null,
    Object? totalResults = null,
    Object? results = null,
  }) {
    return _then(_$PagedResponseModelImpl<T>(
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
@JsonSerializable(genericArgumentFactories: true)
class _$PagedResponseModelImpl<T> implements _PagedResponseModel<T> {
  const _$PagedResponseModelImpl(
      {required this.page,
      @JsonKey(name: 'total_pages') required this.totalPages,
      @JsonKey(name: 'total_results') required this.totalResults,
      required final List<T> results})
      : _results = results;

  factory _$PagedResponseModelImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$PagedResponseModelImplFromJson(json, fromJsonT);

  @override
  final int page;
  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  @JsonKey(name: 'total_results')
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
    return 'PagedResponseModel<$T>(page: $page, totalPages: $totalPages, totalResults: $totalResults, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PagedResponseModelImpl<T> &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, totalPages, totalResults,
      const DeepCollectionEquality().hash(_results));

  /// Create a copy of PagedResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PagedResponseModelImplCopyWith<T, _$PagedResponseModelImpl<T>>
      get copyWith => __$$PagedResponseModelImplCopyWithImpl<T,
          _$PagedResponseModelImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$PagedResponseModelImplToJson<T>(this, toJsonT);
  }
}

abstract class _PagedResponseModel<T> implements PagedResponseModel<T> {
  const factory _PagedResponseModel(
      {required final int page,
      @JsonKey(name: 'total_pages') required final int totalPages,
      @JsonKey(name: 'total_results') required final int totalResults,
      required final List<T> results}) = _$PagedResponseModelImpl<T>;

  factory _PagedResponseModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$PagedResponseModelImpl<T>.fromJson;

  @override
  int get page;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int get totalResults;
  @override
  List<T> get results;

  /// Create a copy of PagedResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PagedResponseModelImplCopyWith<T, _$PagedResponseModelImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
