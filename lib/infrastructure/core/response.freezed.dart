// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ErrorData _$ErrorDataFromJson(Map<String, dynamic> json) {
  return _ErrorData.fromJson(json);
}

/// @nodoc
mixin _$ErrorData {
  String get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorDataCopyWith<ErrorData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorDataCopyWith<$Res> {
  factory $ErrorDataCopyWith(ErrorData value, $Res Function(ErrorData) then) =
      _$ErrorDataCopyWithImpl<$Res, ErrorData>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$ErrorDataCopyWithImpl<$Res, $Val extends ErrorData>
    implements $ErrorDataCopyWith<$Res> {
  _$ErrorDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ErrorDataCopyWith<$Res> implements $ErrorDataCopyWith<$Res> {
  factory _$$_ErrorDataCopyWith(
          _$_ErrorData value, $Res Function(_$_ErrorData) then) =
      __$$_ErrorDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_ErrorDataCopyWithImpl<$Res>
    extends _$ErrorDataCopyWithImpl<$Res, _$_ErrorData>
    implements _$$_ErrorDataCopyWith<$Res> {
  __$$_ErrorDataCopyWithImpl(
      _$_ErrorData _value, $Res Function(_$_ErrorData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_ErrorData(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorData implements _ErrorData {
  _$_ErrorData({required this.error});

  factory _$_ErrorData.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorDataFromJson(json);

  @override
  final String error;

  @override
  String toString() {
    return 'ErrorData(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorData &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorDataCopyWith<_$_ErrorData> get copyWith =>
      __$$_ErrorDataCopyWithImpl<_$_ErrorData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorDataToJson(
      this,
    );
  }
}

abstract class _ErrorData implements ErrorData {
  factory _ErrorData({required final String error}) = _$_ErrorData;

  factory _ErrorData.fromJson(Map<String, dynamic> json) =
      _$_ErrorData.fromJson;

  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorDataCopyWith<_$_ErrorData> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageData _$MessageDataFromJson(Map<String, dynamic> json) {
  return _MessageData.fromJson(json);
}

/// @nodoc
mixin _$MessageData {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageDataCopyWith<MessageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageDataCopyWith<$Res> {
  factory $MessageDataCopyWith(
          MessageData value, $Res Function(MessageData) then) =
      _$MessageDataCopyWithImpl<$Res, MessageData>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$MessageDataCopyWithImpl<$Res, $Val extends MessageData>
    implements $MessageDataCopyWith<$Res> {
  _$MessageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageDataCopyWith<$Res>
    implements $MessageDataCopyWith<$Res> {
  factory _$$_MessageDataCopyWith(
          _$_MessageData value, $Res Function(_$_MessageData) then) =
      __$$_MessageDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_MessageDataCopyWithImpl<$Res>
    extends _$MessageDataCopyWithImpl<$Res, _$_MessageData>
    implements _$$_MessageDataCopyWith<$Res> {
  __$$_MessageDataCopyWithImpl(
      _$_MessageData _value, $Res Function(_$_MessageData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_MessageData(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageData implements _MessageData {
  _$_MessageData({required this.message});

  factory _$_MessageData.fromJson(Map<String, dynamic> json) =>
      _$$_MessageDataFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'MessageData(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageData &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageDataCopyWith<_$_MessageData> get copyWith =>
      __$$_MessageDataCopyWithImpl<_$_MessageData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageDataToJson(
      this,
    );
  }
}

abstract class _MessageData implements MessageData {
  factory _MessageData({required final String message}) = _$_MessageData;

  factory _MessageData.fromJson(Map<String, dynamic> json) =
      _$_MessageData.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_MessageDataCopyWith<_$_MessageData> get copyWith =>
      throw _privateConstructorUsedError;
}

TokenData _$TokenDataFromJson(Map<String, dynamic> json) {
  return _TokenData.fromJson(json);
}

/// @nodoc
mixin _$TokenData {
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenDataCopyWith<TokenData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenDataCopyWith<$Res> {
  factory $TokenDataCopyWith(TokenData value, $Res Function(TokenData) then) =
      _$TokenDataCopyWithImpl<$Res, TokenData>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$TokenDataCopyWithImpl<$Res, $Val extends TokenData>
    implements $TokenDataCopyWith<$Res> {
  _$TokenDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TokenDataCopyWith<$Res> implements $TokenDataCopyWith<$Res> {
  factory _$$_TokenDataCopyWith(
          _$_TokenData value, $Res Function(_$_TokenData) then) =
      __$$_TokenDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$_TokenDataCopyWithImpl<$Res>
    extends _$TokenDataCopyWithImpl<$Res, _$_TokenData>
    implements _$$_TokenDataCopyWith<$Res> {
  __$$_TokenDataCopyWithImpl(
      _$_TokenData _value, $Res Function(_$_TokenData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$_TokenData(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenData implements _TokenData {
  _$_TokenData({required this.token});

  factory _$_TokenData.fromJson(Map<String, dynamic> json) =>
      _$$_TokenDataFromJson(json);

  @override
  final String token;

  @override
  String toString() {
    return 'TokenData(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenData &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokenDataCopyWith<_$_TokenData> get copyWith =>
      __$$_TokenDataCopyWithImpl<_$_TokenData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenDataToJson(
      this,
    );
  }
}

abstract class _TokenData implements TokenData {
  factory _TokenData({required final String token}) = _$_TokenData;

  factory _TokenData.fromJson(Map<String, dynamic> json) =
      _$_TokenData.fromJson;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_TokenDataCopyWith<_$_TokenData> get copyWith =>
      throw _privateConstructorUsedError;
}

IdData _$IdDataFromJson(Map<String, dynamic> json) {
  return _IdData.fromJson(json);
}

/// @nodoc
mixin _$IdData {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdDataCopyWith<IdData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdDataCopyWith<$Res> {
  factory $IdDataCopyWith(IdData value, $Res Function(IdData) then) =
      _$IdDataCopyWithImpl<$Res, IdData>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$IdDataCopyWithImpl<$Res, $Val extends IdData>
    implements $IdDataCopyWith<$Res> {
  _$IdDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IdDataCopyWith<$Res> implements $IdDataCopyWith<$Res> {
  factory _$$_IdDataCopyWith(_$_IdData value, $Res Function(_$_IdData) then) =
      __$$_IdDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_IdDataCopyWithImpl<$Res>
    extends _$IdDataCopyWithImpl<$Res, _$_IdData>
    implements _$$_IdDataCopyWith<$Res> {
  __$$_IdDataCopyWithImpl(_$_IdData _value, $Res Function(_$_IdData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_IdData(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IdData implements _IdData {
  _$_IdData({required this.id});

  factory _$_IdData.fromJson(Map<String, dynamic> json) =>
      _$$_IdDataFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'IdData(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IdData &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdDataCopyWith<_$_IdData> get copyWith =>
      __$$_IdDataCopyWithImpl<_$_IdData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IdDataToJson(
      this,
    );
  }
}

abstract class _IdData implements IdData {
  factory _IdData({required final String id}) = _$_IdData;

  factory _IdData.fromJson(Map<String, dynamic> json) = _$_IdData.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_IdDataCopyWith<_$_IdData> get copyWith =>
      throw _privateConstructorUsedError;
}
