class User {
  int? userId;
  String? userName;
  String? userEmail;
  String? userPassword;

  User({
    required this.userId,
    required this.userName,
    required this.userEmail,
    required this.userPassword,
  });

  // Convert User object to JSON
  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'userName': userName,
      'userEmail': userEmail,
      'userPassword': userPassword,
    };
  }

  // Create User object from JSON
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userId: json['userId'] as int?,
      userName: json['username']
          as String?, // Corrected from 'userName' to 'username'
      userEmail:
          json['email'] as String?, // Corrected from 'userEmail' to 'email'
      userPassword: json['password']
          as String?, // Corrected from 'userPassword' to 'password'
    );
  }
}
