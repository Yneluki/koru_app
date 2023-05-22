import 'package:koru/domain/auth/model/email_address.dart';
import 'package:koru/domain/auth/model/user_name.dart';
import 'package:koru/domain/group/model/member_color.dart';
import 'package:uuid/uuid.dart';

class GroupMember {
  final UuidValue id;
  final UserName name;
  final EmailAddress email;
  final bool isAdmin;
  final MemberColor color;
  final DateTime joinedAt;
  final bool activeUser;

  const GroupMember({
    required this.id,
    required this.name,
    required this.email,
    required this.isAdmin,
    required this.color,
    required this.joinedAt,
    required this.activeUser,
  });

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is GroupMember && o.id == id && o.email == email;
  }

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() =>
      'GroupMember(id:$id, name:$name, email:$email, color:$color, joined:$joinedAt)';
}
