// class UserModel {
//   final String id;
//   final String username;
//   final String email;
//
//   UserModel({required this.id, required this.username, required this.email});
// }
class AuthModel {
  final int status;
  final String message;

  AuthModel({required this.status, required this.message});
}
class UserModel {
  final int status;
  final String message;

  UserModel({required this.status, required this.message});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      status: json['status'],
      message: json['message'],
    );
  }
}
