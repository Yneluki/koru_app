// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loadable.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoadableValue<T, E> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function() loading,
    required TResult Function(E error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function()? loading,
    TResult? Function(E error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function()? loading,
    TResult Function(E error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadableData<T, E> value) data,
    required TResult Function(LoadableLoading<T, E> value) loading,
    required TResult Function(LoadableError<T, E> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadableData<T, E> value)? data,
    TResult? Function(LoadableLoading<T, E> value)? loading,
    TResult? Function(LoadableError<T, E> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadableData<T, E> value)? data,
    TResult Function(LoadableLoading<T, E> value)? loading,
    TResult Function(LoadableError<T, E> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadableValueCopyWith<T, E, $Res> {
  factory $LoadableValueCopyWith(
          LoadableValue<T, E> value, $Res Function(LoadableValue<T, E>) then) =
      _$LoadableValueCopyWithImpl<T, E, $Res, LoadableValue<T, E>>;
}

/// @nodoc
class _$LoadableValueCopyWithImpl<T, E, $Res, $Val extends LoadableValue<T, E>>
    implements $LoadableValueCopyWith<T, E, $Res> {
  _$LoadableValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadableDataCopyWith<T, E, $Res> {
  factory _$$LoadableDataCopyWith(_$LoadableData<T, E> value,
          $Res Function(_$LoadableData<T, E>) then) =
      __$$LoadableDataCopyWithImpl<T, E, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$LoadableDataCopyWithImpl<T, E, $Res>
    extends _$LoadableValueCopyWithImpl<T, E, $Res, _$LoadableData<T, E>>
    implements _$$LoadableDataCopyWith<T, E, $Res> {
  __$$LoadableDataCopyWithImpl(
      _$LoadableData<T, E> _value, $Res Function(_$LoadableData<T, E>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$LoadableData<T, E>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$LoadableData<T, E> implements LoadableData<T, E> {
  const _$LoadableData({required this.data});

  @override
  final T data;

  @override
  String toString() {
    return 'LoadableValue<$T, $E>.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadableData<T, E> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadableDataCopyWith<T, E, _$LoadableData<T, E>> get copyWith =>
      __$$LoadableDataCopyWithImpl<T, E, _$LoadableData<T, E>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function() loading,
    required TResult Function(E error) error,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function()? loading,
    TResult? Function(E error)? error,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function()? loading,
    TResult Function(E error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadableData<T, E> value) data,
    required TResult Function(LoadableLoading<T, E> value) loading,
    required TResult Function(LoadableError<T, E> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadableData<T, E> value)? data,
    TResult? Function(LoadableLoading<T, E> value)? loading,
    TResult? Function(LoadableError<T, E> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadableData<T, E> value)? data,
    TResult Function(LoadableLoading<T, E> value)? loading,
    TResult Function(LoadableError<T, E> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class LoadableData<T, E> implements LoadableValue<T, E> {
  const factory LoadableData({required final T data}) = _$LoadableData<T, E>;

  T get data;
  @JsonKey(ignore: true)
  _$$LoadableDataCopyWith<T, E, _$LoadableData<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadableLoadingCopyWith<T, E, $Res> {
  factory _$$LoadableLoadingCopyWith(_$LoadableLoading<T, E> value,
          $Res Function(_$LoadableLoading<T, E>) then) =
      __$$LoadableLoadingCopyWithImpl<T, E, $Res>;
}

/// @nodoc
class __$$LoadableLoadingCopyWithImpl<T, E, $Res>
    extends _$LoadableValueCopyWithImpl<T, E, $Res, _$LoadableLoading<T, E>>
    implements _$$LoadableLoadingCopyWith<T, E, $Res> {
  __$$LoadableLoadingCopyWithImpl(_$LoadableLoading<T, E> _value,
      $Res Function(_$LoadableLoading<T, E>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadableLoading<T, E> implements LoadableLoading<T, E> {
  const _$LoadableLoading();

  @override
  String toString() {
    return 'LoadableValue<$T, $E>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadableLoading<T, E>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function() loading,
    required TResult Function(E error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function()? loading,
    TResult? Function(E error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function()? loading,
    TResult Function(E error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadableData<T, E> value) data,
    required TResult Function(LoadableLoading<T, E> value) loading,
    required TResult Function(LoadableError<T, E> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadableData<T, E> value)? data,
    TResult? Function(LoadableLoading<T, E> value)? loading,
    TResult? Function(LoadableError<T, E> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadableData<T, E> value)? data,
    TResult Function(LoadableLoading<T, E> value)? loading,
    TResult Function(LoadableError<T, E> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadableLoading<T, E> implements LoadableValue<T, E> {
  const factory LoadableLoading() = _$LoadableLoading<T, E>;
}

/// @nodoc
abstract class _$$LoadableErrorCopyWith<T, E, $Res> {
  factory _$$LoadableErrorCopyWith(_$LoadableError<T, E> value,
          $Res Function(_$LoadableError<T, E>) then) =
      __$$LoadableErrorCopyWithImpl<T, E, $Res>;
  @useResult
  $Res call({E error});
}

/// @nodoc
class __$$LoadableErrorCopyWithImpl<T, E, $Res>
    extends _$LoadableValueCopyWithImpl<T, E, $Res, _$LoadableError<T, E>>
    implements _$$LoadableErrorCopyWith<T, E, $Res> {
  __$$LoadableErrorCopyWithImpl(
      _$LoadableError<T, E> _value, $Res Function(_$LoadableError<T, E>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$LoadableError<T, E>(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as E,
    ));
  }
}

/// @nodoc

class _$LoadableError<T, E> implements LoadableError<T, E> {
  const _$LoadableError(this.error);

  @override
  final E error;

  @override
  String toString() {
    return 'LoadableValue<$T, $E>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadableError<T, E> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadableErrorCopyWith<T, E, _$LoadableError<T, E>> get copyWith =>
      __$$LoadableErrorCopyWithImpl<T, E, _$LoadableError<T, E>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function() loading,
    required TResult Function(E error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function()? loading,
    TResult? Function(E error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function()? loading,
    TResult Function(E error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadableData<T, E> value) data,
    required TResult Function(LoadableLoading<T, E> value) loading,
    required TResult Function(LoadableError<T, E> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadableData<T, E> value)? data,
    TResult? Function(LoadableLoading<T, E> value)? loading,
    TResult? Function(LoadableError<T, E> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadableData<T, E> value)? data,
    TResult Function(LoadableLoading<T, E> value)? loading,
    TResult Function(LoadableError<T, E> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoadableError<T, E> implements LoadableValue<T, E> {
  const factory LoadableError(final E error) = _$LoadableError<T, E>;

  E get error;
  @JsonKey(ignore: true)
  _$$LoadableErrorCopyWith<T, E, _$LoadableError<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}
