import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/domain/auth/auth_service.dart';
import 'package:koru/domain/settlement/model/settlement.dart';
import 'package:koru/domain/settlement/settlement_repository.dart';
import 'package:uuid/uuid.dart';

part 'fetch_settlements.freezed.dart';

Future<Either<FetchSettlementsFailure, List<Settlement>>> fetch_settlements({
  required UuidValue groupId,
  required AuthService authService,
  required SettlementRepository repository,
}) async {
  final user = authService.get_signed_in_user();
  return user.fold(
    () => left(
      const FetchSettlementsFailure.settlementRepositoryError(
        failure: SettlementRepositoryFailure.unauthorized(),
      ),
    ),
    (user) async {
      final res = await repository.fetch_settlements(
        groupId: groupId,
        user: user,
      );
      return res.fold(
        (l) => left(
          FetchSettlementsFailure.settlementRepositoryError(
            failure: l,
          ),
        ),
        (r) => right(r),
      );
    },
  );
}

@freezed
class FetchSettlementsFailure with _$FetchSettlementsFailure {
  const factory FetchSettlementsFailure.settlementRepositoryError({
    required SettlementRepositoryFailure failure,
  }) = SettlementRepositoryError;
}

extension FetchSettlementsFailureX on FetchSettlementsFailure {
  String errorMessage() {
    return when(
      settlementRepositoryError: (f) => f.errorMessage(),
    );
  }
}
