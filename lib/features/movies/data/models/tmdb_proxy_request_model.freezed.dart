// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tmdb_proxy_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TmdbProxyRequestModel _$TmdbProxyRequestModelFromJson(
    Map<String, dynamic> json) {
  return _TmdbProxyRequestModel.fromJson(json);
}

/// @nodoc
mixin _$TmdbProxyRequestModel {
  String get path => throw _privateConstructorUsedError;
  Map<String, dynamic> get queries => throw _privateConstructorUsedError;

  /// Serializes this TmdbProxyRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TmdbProxyRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TmdbProxyRequestModelCopyWith<TmdbProxyRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TmdbProxyRequestModelCopyWith<$Res> {
  factory $TmdbProxyRequestModelCopyWith(TmdbProxyRequestModel value,
          $Res Function(TmdbProxyRequestModel) then) =
      _$TmdbProxyRequestModelCopyWithImpl<$Res, TmdbProxyRequestModel>;
  @useResult
  $Res call({String path, Map<String, dynamic> queries});
}

/// @nodoc
class _$TmdbProxyRequestModelCopyWithImpl<$Res,
        $Val extends TmdbProxyRequestModel>
    implements $TmdbProxyRequestModelCopyWith<$Res> {
  _$TmdbProxyRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TmdbProxyRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? queries = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      queries: null == queries
          ? _value.queries
          : queries // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TmdbProxyRequestModelImplCopyWith<$Res>
    implements $TmdbProxyRequestModelCopyWith<$Res> {
  factory _$$TmdbProxyRequestModelImplCopyWith(
          _$TmdbProxyRequestModelImpl value,
          $Res Function(_$TmdbProxyRequestModelImpl) then) =
      __$$TmdbProxyRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, Map<String, dynamic> queries});
}

/// @nodoc
class __$$TmdbProxyRequestModelImplCopyWithImpl<$Res>
    extends _$TmdbProxyRequestModelCopyWithImpl<$Res,
        _$TmdbProxyRequestModelImpl>
    implements _$$TmdbProxyRequestModelImplCopyWith<$Res> {
  __$$TmdbProxyRequestModelImplCopyWithImpl(_$TmdbProxyRequestModelImpl _value,
      $Res Function(_$TmdbProxyRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TmdbProxyRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? queries = null,
  }) {
    return _then(_$TmdbProxyRequestModelImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      queries: null == queries
          ? _value._queries
          : queries // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TmdbProxyRequestModelImpl implements _TmdbProxyRequestModel {
  const _$TmdbProxyRequestModelImpl(
      {required this.path, required final Map<String, dynamic> queries})
      : _queries = queries;

  factory _$TmdbProxyRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TmdbProxyRequestModelImplFromJson(json);

  @override
  final String path;
  final Map<String, dynamic> _queries;
  @override
  Map<String, dynamic> get queries {
    if (_queries is EqualUnmodifiableMapView) return _queries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_queries);
  }

  @override
  String toString() {
    return 'TmdbProxyRequestModel(path: $path, queries: $queries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TmdbProxyRequestModelImpl &&
            (identical(other.path, path) || other.path == path) &&
            const DeepCollectionEquality().equals(other._queries, _queries));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, path, const DeepCollectionEquality().hash(_queries));

  /// Create a copy of TmdbProxyRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TmdbProxyRequestModelImplCopyWith<_$TmdbProxyRequestModelImpl>
      get copyWith => __$$TmdbProxyRequestModelImplCopyWithImpl<
          _$TmdbProxyRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TmdbProxyRequestModelImplToJson(
      this,
    );
  }
}

abstract class _TmdbProxyRequestModel implements TmdbProxyRequestModel {
  const factory _TmdbProxyRequestModel(
          {required final String path,
          required final Map<String, dynamic> queries}) =
      _$TmdbProxyRequestModelImpl;

  factory _TmdbProxyRequestModel.fromJson(Map<String, dynamic> json) =
      _$TmdbProxyRequestModelImpl.fromJson;

  @override
  String get path;
  @override
  Map<String, dynamic> get queries;

  /// Create a copy of TmdbProxyRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TmdbProxyRequestModelImplCopyWith<_$TmdbProxyRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
