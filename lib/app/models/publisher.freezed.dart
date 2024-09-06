// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'publisher.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Publisher _$PublisherFromJson(Map<String, dynamic> json) {
  return _Publisher.fromJson(json);
}

/// @nodoc
mixin _$Publisher {
  String? get publisherId => throw _privateConstructorUsedError;

  /// Serializes this Publisher to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Publisher
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PublisherCopyWith<Publisher> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublisherCopyWith<$Res> {
  factory $PublisherCopyWith(Publisher value, $Res Function(Publisher) then) =
      _$PublisherCopyWithImpl<$Res, Publisher>;
  @useResult
  $Res call({String? publisherId});
}

/// @nodoc
class _$PublisherCopyWithImpl<$Res, $Val extends Publisher>
    implements $PublisherCopyWith<$Res> {
  _$PublisherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Publisher
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publisherId = freezed,
  }) {
    return _then(_value.copyWith(
      publisherId: freezed == publisherId
          ? _value.publisherId
          : publisherId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PublisherImplCopyWith<$Res>
    implements $PublisherCopyWith<$Res> {
  factory _$$PublisherImplCopyWith(
          _$PublisherImpl value, $Res Function(_$PublisherImpl) then) =
      __$$PublisherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? publisherId});
}

/// @nodoc
class __$$PublisherImplCopyWithImpl<$Res>
    extends _$PublisherCopyWithImpl<$Res, _$PublisherImpl>
    implements _$$PublisherImplCopyWith<$Res> {
  __$$PublisherImplCopyWithImpl(
      _$PublisherImpl _value, $Res Function(_$PublisherImpl) _then)
      : super(_value, _then);

  /// Create a copy of Publisher
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publisherId = freezed,
  }) {
    return _then(_$PublisherImpl(
      publisherId: freezed == publisherId
          ? _value.publisherId
          : publisherId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PublisherImpl implements _Publisher {
  const _$PublisherImpl({this.publisherId});

  factory _$PublisherImpl.fromJson(Map<String, dynamic> json) =>
      _$$PublisherImplFromJson(json);

  @override
  final String? publisherId;

  @override
  String toString() {
    return 'Publisher(publisherId: $publisherId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublisherImpl &&
            (identical(other.publisherId, publisherId) ||
                other.publisherId == publisherId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, publisherId);

  /// Create a copy of Publisher
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PublisherImplCopyWith<_$PublisherImpl> get copyWith =>
      __$$PublisherImplCopyWithImpl<_$PublisherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PublisherImplToJson(
      this,
    );
  }
}

abstract class _Publisher implements Publisher {
  const factory _Publisher({final String? publisherId}) = _$PublisherImpl;

  factory _Publisher.fromJson(Map<String, dynamic> json) =
      _$PublisherImpl.fromJson;

  @override
  String? get publisherId;

  /// Create a copy of Publisher
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PublisherImplCopyWith<_$PublisherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
