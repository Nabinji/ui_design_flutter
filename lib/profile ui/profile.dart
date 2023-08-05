import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Image.network(
              "https://wallpaperaccess.com/full/427852.jpg",
              height: h / 3,
            ),
            const Positioned(
              bottom: -40,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    "https://www.w3schools.com/howto/img_avatar.png"),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        const Center(
          child: Column(
            children: [
              Text(
                "Name :Ram Prasad",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                "Android Developer",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(18.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30,
                child: Icon(
                  FontAwesomeIcons.facebook,
                  size: 45,
                ),
              ),
              SizedBox(
                width: 11,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30,
                child: Icon(
                  FontAwesomeIcons.instagram,
                  color: Colors.red,
                  size: 45,
                ),
              ),
              SizedBox(
                width: 11,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30,
                child: Icon(
                  FontAwesomeIcons.github,
                  color: Colors.black,
                  size: 45,
                ),
              ),
              SizedBox(
                width: 11,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30,
                child: Icon(
                  FontAwesomeIcons.whatsapp,
                  color: Colors.green,
                  size: 45,
                ),
              ),
              SizedBox(
                width: 11,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30,
                child: Icon(
                  FontAwesomeIcons.linkedin,
                  size: 45,
                ),
              ),
              SizedBox(
                width: 11,
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "About",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(
            "As a Flutter developer, I thrive at crafting elegant and efficient cross-platform applications. My code is a fusion of creativity and precision, resulting in seamless user experiences. With a solid foundation in Dart programming and a knack for UI/UX design, I specialize in building dynamic, responsive, and visually appealing apps. My commitment to continuous learning and staying updated with the latest Flutter trends enables me to deliver top-notch solutions that meet user needs and exceed expectations. Let's turn ideas into innovative realities together.",
            style: TextStyle(fontSize: 17),
          ),
        )
      ],
    ));
  }
}
