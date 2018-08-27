class User {
  final String uid;
  final String email;
  final String displayName;
  final String photoUrl;

  User({
    this.uid,
    this.email,
    this.displayName,
    this.photoUrl,
  });

  User.fromJson(Map<String, dynamic> json)
      : uid = json['uid'],
        email = json['email'],
        displayName = json['displayName'],
        photoUrl = json['photoUrl'];
}
