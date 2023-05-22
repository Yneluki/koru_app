import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/domain/auth/model/auth_user.dart';
import 'package:koru/domain/settlement/model/settlement.dart';
import 'package:uuid/uuid.dart';

part 'settlement_repository.freezed.dart';

abstract class SettlementRepository {
  Future<Either<SettlementRepositoryFailure, UuidValue>> settle({
    required UuidValue group,
    required AuthUser user,
  });
  Future<Either<SettlementRepositoryFailure, List<Settlement>>>
      fetch_settlements({
    required UuidValue groupId,
    required AuthUser user,
  });
}

@freezed
class SettlementRepositoryFailure with _$SettlementRepositoryFailure {
  const factory SettlementRepositoryFailure.unauthorized() = Unauthorized;
  const factory SettlementRepositoryFailure.forbidden() = Forbidden;
  const factory SettlementRepositoryFailure.internal() = Internal;
  const factory SettlementRepositoryFailure.notFound() = NotFound;
  const factory SettlementRepositoryFailure.network({
    required String error,
  }) = Network;
}

extension SettlementRepositoryFailureX on SettlementRepositoryFailure {
  String errorMessage() {
    return when(
      internal: () => "Failed due to a server error.",
      network: (error) => "Failed due to a network error: $error.",
      unauthorized: () => "User is not authenticated.",
      forbidden: () => "You are not authorized to perform this action.",
      notFound: () => "Group not found.",
    );
  }
}

class FakeSettlementRepository extends SettlementRepository {
  @override
  Future<Either<SettlementRepositoryFailure, List<Settlement>>>
      fetch_settlements({
    required UuidValue groupId,
    required AuthUser user,
  }) async {
    // TODO: implement fetch_settlements
    throw UnimplementedError();
  }

  @override
  Future<Either<SettlementRepositoryFailure, UuidValue>> settle({
    required UuidValue group,
    required AuthUser user,
  }) async {
    // TODO: implement settle
    throw UnimplementedError();
  }
}
