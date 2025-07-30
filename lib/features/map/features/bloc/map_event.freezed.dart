// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MapEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(double lat, double lng) locationUpdated,
    required TResult Function() fetchUserLocation,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(double lat, double lng)? locationUpdated,
    TResult? Function()? fetchUserLocation,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double lat, double lng)? locationUpdated,
    TResult Function()? fetchUserLocation,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(LocationUpdated value) locationUpdated,
    required TResult Function(FetchUserLocation value) fetchUserLocation,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(LocationUpdated value)? locationUpdated,
    TResult? Function(FetchUserLocation value)? fetchUserLocation,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LocationUpdated value)? locationUpdated,
    TResult Function(FetchUserLocation value)? fetchUserLocation,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapEventCopyWith<$Res> {
  factory $MapEventCopyWith(MapEvent value, $Res Function(MapEvent) then) =
      _$MapEventCopyWithImpl<$Res, MapEvent>;
}

/// @nodoc
class _$MapEventCopyWithImpl<$Res, $Val extends MapEvent>
    implements $MapEventCopyWith<$Res> {
  _$MapEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MapEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
    _$StartedImpl value,
    $Res Function(_$StartedImpl) then,
  ) = __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MapEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'MapEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(double lat, double lng) locationUpdated,
    required TResult Function() fetchUserLocation,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(double lat, double lng)? locationUpdated,
    TResult? Function()? fetchUserLocation,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double lat, double lng)? locationUpdated,
    TResult Function()? fetchUserLocation,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(LocationUpdated value) locationUpdated,
    required TResult Function(FetchUserLocation value) fetchUserLocation,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(LocationUpdated value)? locationUpdated,
    TResult? Function(FetchUserLocation value)? fetchUserLocation,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LocationUpdated value)? locationUpdated,
    TResult Function(FetchUserLocation value)? fetchUserLocation,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements MapEvent {
  const factory Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LocationUpdatedImplCopyWith<$Res> {
  factory _$$LocationUpdatedImplCopyWith(
    _$LocationUpdatedImpl value,
    $Res Function(_$LocationUpdatedImpl) then,
  ) = __$$LocationUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class __$$LocationUpdatedImplCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$LocationUpdatedImpl>
    implements _$$LocationUpdatedImplCopyWith<$Res> {
  __$$LocationUpdatedImplCopyWithImpl(
    _$LocationUpdatedImpl _value,
    $Res Function(_$LocationUpdatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MapEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? lat = null, Object? lng = null}) {
    return _then(
      _$LocationUpdatedImpl(
        null == lat
            ? _value.lat
            : lat // ignore: cast_nullable_to_non_nullable
                  as double,
        null == lng
            ? _value.lng
            : lng // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc

class _$LocationUpdatedImpl implements LocationUpdated {
  const _$LocationUpdatedImpl(this.lat, this.lng);

  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'MapEvent.locationUpdated(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationUpdatedImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  /// Create a copy of MapEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationUpdatedImplCopyWith<_$LocationUpdatedImpl> get copyWith =>
      __$$LocationUpdatedImplCopyWithImpl<_$LocationUpdatedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(double lat, double lng) locationUpdated,
    required TResult Function() fetchUserLocation,
  }) {
    return locationUpdated(lat, lng);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(double lat, double lng)? locationUpdated,
    TResult? Function()? fetchUserLocation,
  }) {
    return locationUpdated?.call(lat, lng);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double lat, double lng)? locationUpdated,
    TResult Function()? fetchUserLocation,
    required TResult orElse(),
  }) {
    if (locationUpdated != null) {
      return locationUpdated(lat, lng);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(LocationUpdated value) locationUpdated,
    required TResult Function(FetchUserLocation value) fetchUserLocation,
  }) {
    return locationUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(LocationUpdated value)? locationUpdated,
    TResult? Function(FetchUserLocation value)? fetchUserLocation,
  }) {
    return locationUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LocationUpdated value)? locationUpdated,
    TResult Function(FetchUserLocation value)? fetchUserLocation,
    required TResult orElse(),
  }) {
    if (locationUpdated != null) {
      return locationUpdated(this);
    }
    return orElse();
  }
}

abstract class LocationUpdated implements MapEvent {
  const factory LocationUpdated(final double lat, final double lng) =
      _$LocationUpdatedImpl;

  double get lat;
  double get lng;

  /// Create a copy of MapEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationUpdatedImplCopyWith<_$LocationUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchUserLocationImplCopyWith<$Res> {
  factory _$$FetchUserLocationImplCopyWith(
    _$FetchUserLocationImpl value,
    $Res Function(_$FetchUserLocationImpl) then,
  ) = __$$FetchUserLocationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchUserLocationImplCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$FetchUserLocationImpl>
    implements _$$FetchUserLocationImplCopyWith<$Res> {
  __$$FetchUserLocationImplCopyWithImpl(
    _$FetchUserLocationImpl _value,
    $Res Function(_$FetchUserLocationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MapEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchUserLocationImpl implements FetchUserLocation {
  const _$FetchUserLocationImpl();

  @override
  String toString() {
    return 'MapEvent.fetchUserLocation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchUserLocationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(double lat, double lng) locationUpdated,
    required TResult Function() fetchUserLocation,
  }) {
    return fetchUserLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(double lat, double lng)? locationUpdated,
    TResult? Function()? fetchUserLocation,
  }) {
    return fetchUserLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double lat, double lng)? locationUpdated,
    TResult Function()? fetchUserLocation,
    required TResult orElse(),
  }) {
    if (fetchUserLocation != null) {
      return fetchUserLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(LocationUpdated value) locationUpdated,
    required TResult Function(FetchUserLocation value) fetchUserLocation,
  }) {
    return fetchUserLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(LocationUpdated value)? locationUpdated,
    TResult? Function(FetchUserLocation value)? fetchUserLocation,
  }) {
    return fetchUserLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LocationUpdated value)? locationUpdated,
    TResult Function(FetchUserLocation value)? fetchUserLocation,
    required TResult orElse(),
  }) {
    if (fetchUserLocation != null) {
      return fetchUserLocation(this);
    }
    return orElse();
  }
}

abstract class FetchUserLocation implements MapEvent {
  const factory FetchUserLocation() = _$FetchUserLocationImpl;
}
