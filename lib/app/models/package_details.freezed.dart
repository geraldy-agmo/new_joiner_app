// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PackageDetails _$PackageDetailsFromJson(Map<String, dynamic> json) {
  return _PackageDetails.fromJson(json);
}

/// @nodoc
mixin _$PackageDetails {
  String get name => throw _privateConstructorUsedError;
  Latest get latest => throw _privateConstructorUsedError;

  /// Serializes this PackageDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PackageDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackageDetailsCopyWith<PackageDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageDetailsCopyWith<$Res> {
  factory $PackageDetailsCopyWith(
          PackageDetails value, $Res Function(PackageDetails) then) =
      _$PackageDetailsCopyWithImpl<$Res, PackageDetails>;
  @useResult
  $Res call({String name, Latest latest});

  $LatestCopyWith<$Res> get latest;
}

/// @nodoc
class _$PackageDetailsCopyWithImpl<$Res, $Val extends PackageDetails>
    implements $PackageDetailsCopyWith<$Res> {
  _$PackageDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackageDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? latest = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latest: null == latest
          ? _value.latest
          : latest // ignore: cast_nullable_to_non_nullable
              as Latest,
    ) as $Val);
  }

  /// Create a copy of PackageDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LatestCopyWith<$Res> get latest {
    return $LatestCopyWith<$Res>(_value.latest, (value) {
      return _then(_value.copyWith(latest: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PackageDetailsImplCopyWith<$Res>
    implements $PackageDetailsCopyWith<$Res> {
  factory _$$PackageDetailsImplCopyWith(_$PackageDetailsImpl value,
          $Res Function(_$PackageDetailsImpl) then) =
      __$$PackageDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Latest latest});

  @override
  $LatestCopyWith<$Res> get latest;
}

/// @nodoc
class __$$PackageDetailsImplCopyWithImpl<$Res>
    extends _$PackageDetailsCopyWithImpl<$Res, _$PackageDetailsImpl>
    implements _$$PackageDetailsImplCopyWith<$Res> {
  __$$PackageDetailsImplCopyWithImpl(
      _$PackageDetailsImpl _value, $Res Function(_$PackageDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackageDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? latest = null,
  }) {
    return _then(_$PackageDetailsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latest: null == latest
          ? _value.latest
          : latest // ignore: cast_nullable_to_non_nullable
              as Latest,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageDetailsImpl implements _PackageDetails {
  _$PackageDetailsImpl({required this.name, required this.latest});

  factory _$PackageDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageDetailsImplFromJson(json);

  @override
  final String name;
  @override
  final Latest latest;

  @override
  String toString() {
    return 'PackageDetails(name: $name, latest: $latest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageDetailsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.latest, latest) || other.latest == latest));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, latest);

  /// Create a copy of PackageDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageDetailsImplCopyWith<_$PackageDetailsImpl> get copyWith =>
      __$$PackageDetailsImplCopyWithImpl<_$PackageDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageDetailsImplToJson(
      this,
    );
  }
}

abstract class _PackageDetails implements PackageDetails {
  factory _PackageDetails(
      {required final String name,
      required final Latest latest}) = _$PackageDetailsImpl;

  factory _PackageDetails.fromJson(Map<String, dynamic> json) =
      _$PackageDetailsImpl.fromJson;

  @override
  String get name;
  @override
  Latest get latest;

  /// Create a copy of PackageDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageDetailsImplCopyWith<_$PackageDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Latest _$LatestFromJson(Map<String, dynamic> json) {
  return _Latest.fromJson(json);
}

/// @nodoc
mixin _$Latest {
  Pubspec get pubspec => throw _privateConstructorUsedError;
  DateTime get published => throw _privateConstructorUsedError;

  /// Serializes this Latest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Latest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LatestCopyWith<Latest> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatestCopyWith<$Res> {
  factory $LatestCopyWith(Latest value, $Res Function(Latest) then) =
      _$LatestCopyWithImpl<$Res, Latest>;
  @useResult
  $Res call({Pubspec pubspec, DateTime published});

  $PubspecCopyWith<$Res> get pubspec;
}

/// @nodoc
class _$LatestCopyWithImpl<$Res, $Val extends Latest>
    implements $LatestCopyWith<$Res> {
  _$LatestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Latest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pubspec = null,
    Object? published = null,
  }) {
    return _then(_value.copyWith(
      pubspec: null == pubspec
          ? _value.pubspec
          : pubspec // ignore: cast_nullable_to_non_nullable
              as Pubspec,
      published: null == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of Latest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PubspecCopyWith<$Res> get pubspec {
    return $PubspecCopyWith<$Res>(_value.pubspec, (value) {
      return _then(_value.copyWith(pubspec: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LatestImplCopyWith<$Res> implements $LatestCopyWith<$Res> {
  factory _$$LatestImplCopyWith(
          _$LatestImpl value, $Res Function(_$LatestImpl) then) =
      __$$LatestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Pubspec pubspec, DateTime published});

  @override
  $PubspecCopyWith<$Res> get pubspec;
}

/// @nodoc
class __$$LatestImplCopyWithImpl<$Res>
    extends _$LatestCopyWithImpl<$Res, _$LatestImpl>
    implements _$$LatestImplCopyWith<$Res> {
  __$$LatestImplCopyWithImpl(
      _$LatestImpl _value, $Res Function(_$LatestImpl) _then)
      : super(_value, _then);

  /// Create a copy of Latest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pubspec = null,
    Object? published = null,
  }) {
    return _then(_$LatestImpl(
      pubspec: null == pubspec
          ? _value.pubspec
          : pubspec // ignore: cast_nullable_to_non_nullable
              as Pubspec,
      published: null == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LatestImpl implements _Latest {
  _$LatestImpl({required this.pubspec, required this.published});

  factory _$LatestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LatestImplFromJson(json);

  @override
  final Pubspec pubspec;
  @override
  final DateTime published;

  @override
  String toString() {
    return 'Latest(pubspec: $pubspec, published: $published)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LatestImpl &&
            (identical(other.pubspec, pubspec) || other.pubspec == pubspec) &&
            (identical(other.published, published) ||
                other.published == published));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pubspec, published);

  /// Create a copy of Latest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LatestImplCopyWith<_$LatestImpl> get copyWith =>
      __$$LatestImplCopyWithImpl<_$LatestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LatestImplToJson(
      this,
    );
  }
}

abstract class _Latest implements Latest {
  factory _Latest(
      {required final Pubspec pubspec,
      required final DateTime published}) = _$LatestImpl;

  factory _Latest.fromJson(Map<String, dynamic> json) = _$LatestImpl.fromJson;

  @override
  Pubspec get pubspec;
  @override
  DateTime get published;

  /// Create a copy of Latest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LatestImplCopyWith<_$LatestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Pubspec _$PubspecFromJson(Map<String, dynamic> json) {
  return _Pubspec.fromJson(json);
}

/// @nodoc
mixin _$Pubspec {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;

  /// Serializes this Pubspec to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Pubspec
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PubspecCopyWith<Pubspec> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PubspecCopyWith<$Res> {
  factory $PubspecCopyWith(Pubspec value, $Res Function(Pubspec) then) =
      _$PubspecCopyWithImpl<$Res, Pubspec>;
  @useResult
  $Res call({String name, String description, String version});
}

/// @nodoc
class _$PubspecCopyWithImpl<$Res, $Val extends Pubspec>
    implements $PubspecCopyWith<$Res> {
  _$PubspecCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Pubspec
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PubspecImplCopyWith<$Res> implements $PubspecCopyWith<$Res> {
  factory _$$PubspecImplCopyWith(
          _$PubspecImpl value, $Res Function(_$PubspecImpl) then) =
      __$$PubspecImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description, String version});
}

/// @nodoc
class __$$PubspecImplCopyWithImpl<$Res>
    extends _$PubspecCopyWithImpl<$Res, _$PubspecImpl>
    implements _$$PubspecImplCopyWith<$Res> {
  __$$PubspecImplCopyWithImpl(
      _$PubspecImpl _value, $Res Function(_$PubspecImpl) _then)
      : super(_value, _then);

  /// Create a copy of Pubspec
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? version = null,
  }) {
    return _then(_$PubspecImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PubspecImpl implements _Pubspec {
  _$PubspecImpl(
      {required this.name, required this.description, required this.version});

  factory _$PubspecImpl.fromJson(Map<String, dynamic> json) =>
      _$$PubspecImplFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String version;

  @override
  String toString() {
    return 'Pubspec(name: $name, description: $description, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PubspecImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, version);

  /// Create a copy of Pubspec
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PubspecImplCopyWith<_$PubspecImpl> get copyWith =>
      __$$PubspecImplCopyWithImpl<_$PubspecImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PubspecImplToJson(
      this,
    );
  }
}

abstract class _Pubspec implements Pubspec {
  factory _Pubspec(
      {required final String name,
      required final String description,
      required final String version}) = _$PubspecImpl;

  factory _Pubspec.fromJson(Map<String, dynamic> json) = _$PubspecImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get version;

  /// Create a copy of Pubspec
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PubspecImplCopyWith<_$PubspecImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
