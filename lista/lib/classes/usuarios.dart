class User {
  final String id;
  final String username;
  final String password;
  final bool validated;
  User({
    required this.id,
    required this.username,
    required this.password,
    required this.validated,
  });
  @override
  String toString() {
    return 'User(id: $id, username: $username, pass: $password, validated: $validated)';
  }
}