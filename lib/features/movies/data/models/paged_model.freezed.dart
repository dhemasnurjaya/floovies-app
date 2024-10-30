// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paged_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PagedModel<T> _$PagedModelFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _PagedModel<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$PagedModel<T> {
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int get totalResults => throw _privateConstructorUsedError;
  List<T> get results => throw _privateConstructorUsedError;

  /// Serializes this PagedModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of PagedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PagedModelCopyWith<T, PagedModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagedModelCopyWith<T, $Res> {
  factory $PagedModelCopyWith(
          PagedModel<T> value, $Res Function(PagedModel<T>) then) =
      _$PagedModelCopyWithImpl<T, $Res, PagedModel<T>>;
  @useResult
  $Res call(
      {int page,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults,
      List<T> results});
}

/// @nodoc
class _$PagedModelCopyWithImpl<T, $Res, $Val extends PagedModel<T>>
    implements $PagedModelCopyWith<T, $Res> {
  _$PagedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PagedModel
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
abstract class _$$PagedModelImplCopyWith<T, $Res>
    implements $PagedModelCopyWith<T, $Res> {
  factory _$$PagedModelImplCopyWith(
          _$PagedModelImpl<T> value, $Res Function(_$PagedModelImpl<T>) then) =
      __$$PagedModelImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {int page,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults,
      List<T> results});
}

/// @nodoc
class __$$PagedModelImplCopyWithImpl<T, $Res>
    extends _$PagedModelCopyWithImpl<T, $Res, _$PagedModelImpl<T>>
    implements _$$PagedModelImplCopyWith<T, $Res> {
  __$$PagedModelImplCopyWithImpl(
      _$PagedModelImpl<T> _value, $Res Function(_$PagedModelImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of PagedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? totalPages = null,
    Object? totalResults = null,
    Object? results = null,
  }) {
    return _then(_$PagedModelImpl<T>(
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
class _$PagedModelImpl<T> implements _PagedModel<T> {
  _$PagedModelImpl(
      {required this.page,
      @JsonKey(name: 'total_pages') required this.totalPages,
      @JsonKey(name: 'total_results') required this.totalResults,
      required final List<T> results})
      : _results = results;

  factory _$PagedModelImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$PagedModelImplFromJson(json, fromJsonT);

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
    return 'PagedModel<$T>(page: $page, totalPages: $totalPages, totalResults: $totalResults, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PagedModelImpl<T> &&
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

  /// Create a copy of PagedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PagedModelImplCopyWith<T, _$PagedModelImpl<T>> get copyWith =>
      __$$PagedModelImplCopyWithImpl<T, _$PagedModelImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$PagedModelImplToJson<T>(this, toJsonT);
  }
}

abstract class _PagedModel<T> implements PagedModel<T> {
  factory _PagedModel(
      {required final int page,
      @JsonKey(name: 'total_pages') required final int totalPages,
      @JsonKey(name: 'total_results') required final int totalResults,
      required final List<T> results}) = _$PagedModelImpl<T>;

  factory _PagedModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$PagedModelImpl<T>.fromJson;

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

  /// Create a copy of PagedModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PagedModelImplCopyWith<T, _$PagedModelImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
