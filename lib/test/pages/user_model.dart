class UserModel {
  final int? id;
  final String username;
  final String email;

  UserModel({this.id, required this.username, required this.email});

  Map<String, dynamic> toMap() {
    return {'id': id, 'username': username, 'email': email};
  }
}
