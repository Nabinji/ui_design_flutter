import 'package:flutter/material.dart';
import 'package:instagram_ui/Screen/bottomnavigation_bar.dart';
import 'package:instagram_ui/model/items_model.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key, required this.user});

  final UserDetail user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MyBottomNavigationBar(),
      backgroundColor: const Color.fromARGB(255, 239, 243, 247),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // For back button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              ),
            ),
            // For image
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    user.username,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 30),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(user.image),
                  ),
                ],
              ),
            ),
            // For post followers and following
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    user.post.toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Text(
                    user.followers.toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Text(
                    user.following.toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    "Post",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black38),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "followers",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black38),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "following",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black38),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  SizedBox(
                    height: 35,
                    width: 200,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue),
                        onPressed: () {},
                        child: const Text(
                          "Send Message",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  SizedBox(
                    height: 35,
                    child: OutlinedButton(
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Icon(
                              Icons.person_2,
                              color: Colors.black,
                            ),
                            Icon(
                              Icons.check,
                              color: Colors.black,
                            )
                          ],
                        )),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 32,
                    width: 45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Icon(
                      Icons.arrow_drop_down,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // For name
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(children: [
                  Text(
                    user.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.check_circle,
                    color: Colors.blue,
                    size: 20,
                  )
                ])),
            // address and profession
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                user.address,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.black45),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // For icon and grid view
            Container(
              height: 45,
              color: const Color.fromARGB(255, 227, 238, 245),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.view_module_rounded,
                      color: Colors.blue,
                    ),
                    Icon(
                      Icons.menu,
                      color: Colors.black38,
                    ),
                    Icon(Icons.stars_rounded, color: Colors.black38),
                    Icon(
                      Icons.person_pin_rounded,
                      color: Colors.black38,
                    )
                  ],
                ),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 1.01,
                mainAxisSpacing: 1,
              ),
              itemBuilder: (context, index) => Image.asset(user.image),
              itemCount: 9,
            )
          ],
        )),
      ),
    );
  }
}
