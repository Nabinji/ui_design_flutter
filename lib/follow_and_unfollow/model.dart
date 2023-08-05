class User {
  final String name;
  final String username;
  final String imageUrl;
  bool isFollowed;

  User(
      {required this.name,
      required this.username,
      required this.imageUrl,
      required this.isFollowed});
}

List<User> usersList = [
  User(
      name: 'virat.kohli',
      username: 'Virat kohli',
      imageUrl:
          "https://cdn.images.express.co.uk/img/dynamic/68/590x/Virat-Kohli-India-cricket-star-927773.jpg?r=1686998680160",
      isFollowed: false),
  User(
      name: 'steve_smith',
      username: 'Steve Smith',
      imageUrl:
          "https://staticg.sportskeeda.com/editor/2023/02/4a3c6-16766121781745-1920.jpg",
      isFollowed: false),
  User(
      name: 'leomessi',
      username: 'Leo Messi',
      imageUrl:
          "https://img.olympicchannel.com/images/image/private/t_s_w960/t_s_16_9_g_auto/f_auto/primary/wq4l6w3ftzn6gequts2v",
      isFollowed: false),
  User(
      name: 'ronaldo',
      username: 'Cristiano Ronaldo',
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/commons/8/8c/Cristiano_Ronaldo_2018.jpg",
      isFollowed: false),
  User(
      name: 'rafaelnadal',
      username: 'Rafael Nadal',
      imageUrl: "https://www.atptour.com/-/media/alias/player-headshot/N409",
      isFollowed: false)
];
