import 'package:flutter/material.dart';
import 'package:flutter_ui/follow_and_unfollow/model.dart';

class FollowingPage extends StatefulWidget {
  const FollowingPage({Key? key}) : super(key: key);

  @override
  _FollowingPageState createState() => _FollowingPageState();
}

class _FollowingPageState extends State<FollowingPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Following',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(right: 20, left: 20),
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: ListView.builder(
          itemCount: usersList.length,
          itemBuilder: (context, index) {
            User user = usersList[index];
            return playerList(user);
          },
        ),
      ),
    );
  }

  playerList(User user) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                height: 60,
                width: 60,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                    user.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    user.username,
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  )
                ],
              )
            ],
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            child: MaterialButton(
              color: user.isFollowed
                  ? const Color.fromARGB(255, 214, 213, 214)
                  : const Color.fromARGB(255, 31, 152, 233),
              onPressed: () {
                setState(() {
                  user.isFollowed = !user.isFollowed;
                });
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: Text(
                user.isFollowed ? 'Unfollow' : 'Follow',
                style: const TextStyle(color: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
