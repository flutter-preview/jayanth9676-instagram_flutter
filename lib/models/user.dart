import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  // final String? username;
  // final String? uid;
  // final String? email;
  // final String photoUrl;
  // final String? bio;
  // final List? followers;
  // final List? following;
  final String username;
  final String uid;
  final String email;
  final String photoUrl;
  final String bio;
  final List followers;
  final List following;

  const User({
    required this.email,
    required this.uid,
    required this.photoUrl,
    required this.username,
    required this.bio,
    required this.following,
    required this.followers,
  });

  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return User(
      username: snapshot["username"] ?? "",
      uid: snapshot["uid"] ?? "",
      email: snapshot["email"] ?? "",
      photoUrl: snapshot["photoUrl"] ?? "",
      bio: snapshot["bio"] ?? "",
      followers: snapshot["followers"] ?? "",
      following: snapshot["following"] ?? "",
      // username: snapshot["username"],
      // uid: snapshot["uid"],
      // email: snapshot["email"],
      // photoUrl: snapshot["photoUrl"],
      // bio: snapshot["bio"],
      // followers: snapshot["followers"],
      // following: snapshot["following"],
    );
  }

  Map<String, dynamic> toJson() => {
        'username': username,
        'uid': uid,
        'email': email,
        'photoUrl': photoUrl,
        'bio': bio,
        'followers': followers,
        'following': following,
      };
}
