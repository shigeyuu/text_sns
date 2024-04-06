class PublicUser {
  PublicUser({
    required this.uid,
    required this.followerCount,
    required this.followingCount,
  });
  final int followingCount;
  final int followerCount;
  final String uid;
  factory PublicUser.fromJson(Map<String, dynamic> json) => PublicUser(
        followingCount: json['followingCount'],
        followerCount: json['followerCount'],
        uid: json['uid'],
      );
  Map<String, dynamic> toJson() => {
        'uid': uid,
        'followerCount': followerCount,
        'followingCount': followingCount,
      };
}
