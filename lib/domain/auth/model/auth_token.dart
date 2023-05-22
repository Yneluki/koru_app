class AuthToken {
  final String value;

  const AuthToken(this.value);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is AuthToken && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'AuthToken($value)';
}
