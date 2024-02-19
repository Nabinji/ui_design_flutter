class UserDetail {
  String id;
  String image;
  String name;
  String username;
  int post;
  int followers;
  int following;
  int likes;
  String comment;
  String address;

  UserDetail({
    required this.id,
    required this.image,
    required this.name,
    required this.username,
    required this.post,
    required this.followers,
    required this.following,
    required this.likes,
    required this.comment,
    required this.address,
  });
}

List<UserDetail> userItems = [
  UserDetail(
      id: '1',
      image: "assets/images/c.jpg",
      name: 'Alise Smith',
      post: 25,
      username: "alisesmith",
      followers: 7850,
      following: 100,
      likes: 1298,
      comment: "So Beautiful",
      address: 'Fashion-Designer, London UK'),
  UserDetail(
      id: '2',
      image: "assets/images/a.jpg",
      name: 'Westly Windler',
      username: "westly.windler",
      post: 245,
      followers: 750,
      following: 715,
      likes: 2875,
      comment: "Wow i likem it",
      address: 'Designer,US'),
  UserDetail(
      id: '3',
      image: "assets/images/b.jpg",
      name: 'Li Maxwell',
      post: 245,
      username: "li-maxwell",
      followers: 850,
      following: 1,
      likes: 2234,
      comment: "In heaven",
      address: 'Programmer,Nepal'),
  UserDetail(
      id: '4',
      image: "assets/images/d.jpg",
      name: 'Mis Beauty',
      post: 245,
      username: "mis_beauty",
      followers: 7850,
      following: 230,
      likes: 2,
      comment: "Beautiful",
      address: 'Flutter Devloper,Canada'),
  UserDetail(
      id: '5',
      image: "assets/images/e.jpg",
      name: 'Steve Smith',
      post: 245,
      username: "stevesmith",
      followers: 780,
      following: 1236,
      likes: 78039,
      comment: "you are don",
      address: 'Designer,US'),
  UserDetail(
      id: '6',
      image: "assets/images/f.jpg",
      name: 'Mos',
      post: 245,
      username: "mos_",
      followers: 785,
      following: 10,
      likes: 55555,
      comment: "in my way ",
      address: 'YouTuber,India'),
];
