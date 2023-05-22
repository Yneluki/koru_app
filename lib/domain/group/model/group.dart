import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koru/domain/group/model/group_member.dart';
import 'package:koru/domain/group/model/group_name.dart';
import 'package:uuid/uuid.dart';

part 'group.freezed.dart';

@freezed
class Group with _$Group {
  const factory Group({
    required UuidValue id,
    required GroupName name,
    required GroupMember admin,
    required List<GroupMember> members,
  }) = _Group;
}

extension GroupX on Group {
  List<GroupMember> groupMembers() {
    return [admin, ...members];
  }
}
