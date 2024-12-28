class UserModel {
  String? uid;
  String email;
  String password;
  DateTime trialStartDate;
  bool isPremium;

  UserModel({
    this.uid,
    required this.email,
    required this.password,
    required this.trialStartDate,
    this.isPremium = false,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      password: map['password'],
      trialStartDate: DateTime.parse(map['trialStartDate']),
      isPremium: map['isPremium'] ?? false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'password': password,
      'trialStartDate': trialStartDate.toIso8601String(),
      'isPremium': isPremium,
    };
  }
}
