import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:koru/domain/auth/model/auth_user.dart';
import 'package:koru/domain/settlement/model/settlement.dart';
import 'package:koru/domain/settlement/settlement_repository.dart';
import 'package:koru/infrastructure/core/response.dart';
import 'package:uuid/uuid.dart';

class KoruSettlementApi {
  final String baseUrl;

  KoruSettlementApi({
    required this.baseUrl,
  });

  Future<Either<SettlementRepositoryFailure, UuidValue>> settle({
    required UuidValue group,
    required AuthUser user,
  }) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/groups/${group.uuid}/settlements'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'cookie': user.token.value
        },
      );

      switch (response.statusCode) {
        case 201:
          var resp = ServerResponse<IdData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          final stlId = UuidValue(resp.data.id);
          return right(stlId);
        case 401:
          return left(const SettlementRepositoryFailure.unauthorized());
        case 403:
          return left(const SettlementRepositoryFailure.forbidden());
        case 500:
          var resp = ServerResponse<ErrorData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          print("500 error:" + resp.data.error);
          return left(const SettlementRepositoryFailure.internal());
        default:
          return left(const SettlementRepositoryFailure.internal());
      }
    } catch (e, stack) {
      print(e);
      print(stack.toString());
      return left(SettlementRepositoryFailure.network(
        error: e.toString(),
      ));
    }
  }

  Future<Either<SettlementRepositoryFailure, List<Settlement>>>
      fetch_settlements({
    required UuidValue group,
    required AuthUser user,
  }) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/groups/${group.uuid}/settlements'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'cookie': user.token.value
        },
      );

      switch (response.statusCode) {
        case 200:
          var resp = ServerResponse<SettlementsData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          final settlements = resp.data.settlements
              .map(
                (dto) => dto.toSettlement(user.id),
              )
              .toList(growable: false);
          return right(settlements);
        case 401:
          return left(const SettlementRepositoryFailure.unauthorized());
        case 403:
          return left(const SettlementRepositoryFailure.forbidden());
        case 404:
          return left(const SettlementRepositoryFailure.notFound());
        case 500:
          var resp = ServerResponse<ErrorData>.fromJson(
              jsonDecode(utf8.decode(response.bodyBytes)));
          print("500 error:" + resp.data.error);
          return left(const SettlementRepositoryFailure.internal());
        default:
          return left(const SettlementRepositoryFailure.internal());
      }
    } catch (e, stack) {
      print(e);
      print(stack.toString());
      return left(SettlementRepositoryFailure.network(
        error: e.toString(),
      ));
    }
  }
}
