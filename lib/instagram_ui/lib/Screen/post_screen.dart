import 'package:flutter/material.dart';
import 'package:instagram_ui/Screen/user_profile.dart';

import '../model/items_model.dart';

class Posts extends StatelessWidget {
  const Posts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: userItems.length,
            itemBuilder: (context, index) {
              UserDetail user = userItems[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UserProfile(
                                        user: user,
                                      )));
                        },
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(user.image),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UserProfile(
                                        user: user,
                                      )));
                        },
                        child: Text(
                          user.username,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.more_horiz)
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(
                                user.image,
                              ),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.favorite_border,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        "assets/images/comments.png",
                        height: 30,
                        width: 30,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        "assets/images/send.png",
                        height: 30,
                        width: 25,
                      ),
                      const Spacer(),
                      const Icon(Icons.bookmark_border_sharp)
                    ],
                  ),
                  Text(
                    "${user.likes.toString()} Likes",
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      Text(
                        user.comment,
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "#favorite",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              );
            }));
  }
}
