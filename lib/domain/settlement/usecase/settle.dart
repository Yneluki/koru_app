import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/domain/auth/auth_service.dart';
import 'package:koru/domain/settlement/settlement_repository.dart';
import 'package:koru/domain/store/koru_state_service.dart';
import 'package:uuid/uuid.dart';

part 'settle.freezed.dart';

Future<Either<SettleFailure, Unit>> settle({
  required UuidValue group,
  required AuthService authService,
  required KoruStateService stateService,
  required SettlementRepository repository,
}) async {
  final user = authService.get_signed_in_user();
  return user.fold(
    () => left(
      const SettleFailure.settlementRepositoryError(
        failure: SettlementRepositoryFailure.unauthorized(),
      ),
    ),
    (user) async {
      final res = await repository.settle(
        group: group,
        user: user,
      );
      return res.fold(
        (l) {
          l.maybeWhen(
            orElse: () => null,
            unauthorized: () => stateService.sessionTimeout(),
          );
          return left(
            SettleFailure.settlementRepositoryError(
              failure: l,
            ),
          );
        },
        (r) {
          stateService.settled();
          return right(unit);
        },
      );
    },
  );
}

@freezed
class SettleFailure with _$SettleFailure {
  const factory SettleFailure.settlementRepositoryError({
    required SettlementRepositoryFailure failure,
  }) = SettlementRepositoryError;
}

extension SettleFailureX on SettleFailure {
  String errorMessage() {
    return when(
      settlementRepositoryError: (f) => f.errorMessage(),
    );
  }
}
