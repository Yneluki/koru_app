import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:koru/domain/auth/auth_service.dart';
import 'package:koru/domain/auth/model/auth_token.dart';
import 'package:koru/domain/auth/model/auth_user.dart';
import 'package:koru/domain/auth/model/password.dart';
import 'package:koru/domain/auth/model/email_address.dart';
import 'package:http/http.dart' as http;
import 'package:koru/domain/auth/model/user_name.dart';
import 'package:koru/infrastructure/core/response.dart';
import 'package:uuid/uuid.dart';

class KoruAuthService extends AuthService {
  final String baseUrl;

  Option<AuthUser> signed_in_user = none();

  KoruAuthService({
    required this.baseUrl,
  });

  @override
  Future<Either<AuthServerFailure, Unit>> register({
    required EmailAddress email,
    required Password password,
    required UserName userName,
  }) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/register'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'name': userName.value,
          'email': email.value,
          'password': password.value,
        }),
      );

      switch (response.statusCode) {
        case 201:
          var resp = ServerResponse<MessageData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          return right(unit);
        case 400:
          var resp = ServerResponse<ErrorData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          return left(AuthServerFailure.validation(error: resp.data.error));
        case 500:
          var resp = ServerResponse<ErrorData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          return left(const AuthServerFailure.internal());
        default:
          return left(const AuthServerFailure.internal());
      }
    } catch (e) {
      return left(AuthServerFailure.network(
        error: e.toString(),
      ));
    }
  }

  @override
  Future<Either<AuthServerFailure, AuthUser>> sign_in(
      {required EmailAddress email, required Password password}) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/login'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'email': email.value,
          'password': password.value,
        }),
      );

      switch (response.statusCode) {
        case 200:
          var resp = ServerResponse<IdData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          final userId = UuidValue(resp.data.id);
          if (response.headers.containsKey('set-cookie')) {
            final rawCookie = response.headers['set-cookie']!;
            int index = rawCookie.indexOf(';');
            final cookie =
                (index == -1) ? rawCookie : rawCookie.substring(0, index);
            final token = AuthToken(cookie);
            final user = AuthUser(id: userId, token: token);
            signed_in_user = some(user);
            return right(user);
          } else {
            return left(const AuthServerFailure.internal());
          }
        case 400:
          var resp = ServerResponse<ErrorData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          return left(AuthServerFailure.validation(error: resp.data.error));
        case 401:
          var resp = ServerResponse<ErrorData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          return left(const AuthServerFailure.unauthorized());
        case 500:
          var resp = ServerResponse<ErrorData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          return left(const AuthServerFailure.internal());
        default:
          return left(const AuthServerFailure.internal());
      }
    } catch (e) {
      return left(AuthServerFailure.network(
        error: e.toString(),
      ));
    }
  }

  @override
  Option<AuthUser> get_signed_in_user() {
    return signed_in_user;
  }

  @override
  void set_signed_in_user(Option<AuthUser> user) {
    signed_in_user = user;
  }
}
