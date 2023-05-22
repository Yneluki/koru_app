import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/domain/auth/model/auth_user.dart';

part 'device_service.freezed.dart';

abstract class DeviceService {
  Future<Either<DeviceServiceFailure, Unit>> register({
    required AuthUser user,
  });
  Future<Either<DeviceServiceFailure, Unit>> unregister({
    required AuthUser user,
  });
}

@freezed
class DeviceServiceFailure with _$DeviceServiceFailure {
  const factory DeviceServiceFailure.internal() = Internal;
  const factory DeviceServiceFailure.unauthorized() = Unauthorized;
  const factory DeviceServiceFailure.validation({
    required String error,
  }) = Validation;
  const factory DeviceServiceFailure.network({
    required String error,
  }) = Network;
}

class FakeDeviceService implements DeviceService {
  @override
  Future<Either<DeviceServiceFailure, Unit>> register({
    required AuthUser user,
  }) async {
    return right(unit);
  }

  @override
  Future<Either<DeviceServiceFailure, Unit>> unregister({
    required AuthUser user,
  }) async {
    return right(unit);
  }
}
