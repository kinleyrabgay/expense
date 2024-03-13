import 'package:cloud_firestore/cloud_firestore.dart';

class UserItem {
  UserItem();

  String? accessToken;
  String? token;
  String? name;
  String? avatar;
}

class UserData {
  UserData({
    this.firstName,
    this.lastName,
    this.avatar,
    this.email,
    this.bio,
    this.username,
  });

  final String? firstName;
  final String? lastName;
  final String? avatar;
  final String? email;
  final String? bio;
  final String? username;

  factory UserData.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return UserData(
        firstName: data?['first_name'],
        lastName: data?['last_name'],
        avatar: data?['avatar'],
        email: data?['email'],
        username: data?['username'],
        bio: data?['bio']);
  }

  Map<String, dynamic> toFirestore() {
    return {
      if (email != null) "email": email,
      if (firstName != null) "first_name": firstName,
      if (avatar != null) "avatar": avatar,
      if (lastName != null) "last_name": lastName,
      if (username != null) "username": username,
      if (bio != null) "bio": bio,
    };
  }
}
