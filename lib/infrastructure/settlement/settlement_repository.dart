import 'package:koru/domain/auth/model/auth_user.dart';
import 'package:dartz/dartz.dart';
import 'package:koru/domain/group/model/group.dart';
import 'package:koru/domain/settlement/model/settlement.dart';
import 'package:koru/domain/settlement/settlement_repository.dart';
import 'package:koru/infrastructure/settlement/settlement_api.dart';
import 'package:uuid/uuid.dart';

class KoruSettlementRepository extends SettlementRepository {
  final KoruSettlementApi api;

  KoruSettlementRepository({
    required this.api,
  });

  @override
  Future<Either<SettlementRepositoryFailure, UuidValue>> settle({
    required UuidValue group,
    required AuthUser user,
  }) async {
    return await api.settle(
      group: group,
      user: user,
    );
  }

  @override
  Future<Either<SettlementRepositoryFailure, List<Settlement>>>
      fetch_settlements({
    required UuidValue groupId,
    required AuthUser user,
  }) async {
    return await api.fetch_settlements(
      group: groupId,
      user: user,
    );
  }
}
