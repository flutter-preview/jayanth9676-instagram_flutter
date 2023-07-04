import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  // final String? username;
  // final String? uid;
  // final String? email;
  // final String postUrl;
  // final String? bio;
  // final List? followers;
  // final List? following;
  final String username;
  final String uid;
  final String description;
  final String postId;
  final datePublished;
  final String postUrl;
  final String profileImage;
  final likes;

  const Post({
    required this.username,
    required this.uid,
    required this.postId,
    required this.postUrl,
    required this.description,
    required this.likes,
    required this.datePublished,
    required this.profileImage,
  });

  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Post(
      username: snapshot["username"] ?? "",
      uid: snapshot["uid"] ?? "",
      postId: snapshot["postId"] ?? "",
      postUrl: snapshot["postUrl"] ?? "",
      description: snapshot["description"] ?? "",
      likes: snapshot["likes"] ?? "",
      datePublished: snapshot["datePublished"] ?? "",
      profileImage: snapshot["profileImage"] ?? "",
      // username: snapshot["username"],
      // uid: snapshot["uid"],
      // email: snapshot["email"],
      // postUrl: snapshot["postUrl"],
      // bio: snapshot["bio"],
      // followers: snapshot["followers"],
      // following: snapshot["following"],
    );
  }

  Map<String, dynamic> toJson() => {
        'username': username,
        'uid': uid,
        'postId': postId,
        'postUrl': postUrl,
        'description': description,
        'likes': likes,
        'datePublished': datePublished,
        'profileImage': profileImage,
      };
}
