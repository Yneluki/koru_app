import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/domain/auth/model/auth_token.dart';
import 'package:uuid/uuid.dart';

part 'auth_user.freezed.dart';

@freezed
class AuthUser with _$AuthUser {
  const factory AuthUser({
    required UuidValue id,
    required AuthToken token,
  }) = _AuthUser;
}
