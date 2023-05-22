import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/domain/auth/model/auth_token.dart';
import 'package:koru/domain/auth/model/auth_user.dart';
import 'package:koru/domain/common/loadable.dart';
import 'package:koru/domain/group/model/detailed_group.dart';
import 'package:koru/domain/group/model/group.dart';
import 'package:koru/domain/group/usecase/fetch_group.dart';
import 'package:koru/domain/group/usecase/fetch_groups.dart';
import 'package:koru/domain/settlement/model/settlement.dart';
import 'package:koru/domain/settlement/usecase/fetch_settlements.dart';
import 'package:uuid/uuid.dart';

part 'koru_state.freezed.dart';

@freezed
class KoruState with _$KoruState {
  const factory KoruState({
    required Option<AuthUser> user,
    required Option<UuidValue> groupId,
    required LoadableValue<List<Group>, FetchGroupsFailure> groups,
    required LoadableValue<DetailedGroup, FetchGroupFailure> group,
    required LoadableValue<List<Settlement>, FetchSettlementsFailure>
        settlements,
    required bool isLoading,
    required bool sessionTimeout,
  }) = _KoruState;

  factory KoruState.initial() {
    return KoruState(
      user: none(),
      groupId: none(),
      groups: const LoadableLoading(),
      group: const LoadableLoading(),
      settlements: const LoadableLoading(),
      isLoading: true,
      sessionTimeout: false,
    );
  }

  factory KoruState.fromStorage(Map<String, String> storage) {
    var user = none<AuthUser>();
    var groupId = none<UuidValue>();
    if (storage.containsKey('userId')) {
      user = some(AuthUser(
        id: UuidValue(storage['userId']!),
        token: AuthToken(storage['token']!),
      ));
    }
    if (storage.containsKey('groupId')) {
      groupId = some(UuidValue(storage['groupId']!));
    }
    return KoruState(
      user: user,
      groupId: groupId,
      groups: const LoadableLoading(),
      group: const LoadableLoading(),
      settlements: const LoadableLoading(),
      isLoading: false,
      sessionTimeout: false,
    );
  }
}

extension KoruStateX on KoruState {
  Map<String, String> toStorage() {
    Map<String, String> map = {};
    user.fold(() => null, (u) {
      map.putIfAbsent('userId', () => u.id.toString());
      map.putIfAbsent('token', () => u.token.value);
    });
    groupId.fold(
      () => null,
      (g) => map.putIfAbsent('groupId', () => g.toString()),
    );
    return map;
  }
}
