class UserModel {
  String? id;
  String? username;
  String? password;
  String? rePassword;

  UserModel([this.id, this.username, this.password, this.rePassword]);

  Map<String, dynamic> userToJson() {
    return {
      'username': username,
      'password': password,
    };
  }

  UserModel.userFromJson(Map json) {
    id = json['_id'];
    username = json['username'];
    password = json['password'];
  }

  String? usernameValidation(String? string) {
    if (string!.isEmpty) return 'Enter your username';
    return null;
  }

  String? passwordValidation(String? string) {
    if (string!.isEmpty) return 'Enter your password';
    return null;
  }

    String? rePasswordValidation(String? string) {
    if (string != this.password) return 'Both Passwords must match';
    return null;
  }
}
