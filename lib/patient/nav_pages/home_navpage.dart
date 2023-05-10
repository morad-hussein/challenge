import 'dart:ffi';

import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:projectfinal/core/color_config/color.dart';


Widget buildCircleButton({
  IconData? icon,
  double? iconSize,
  Function()? onPressed,
  Color? color,
}) {
  return Container(
    margin: const EdgeInsets.all(6.0),
    decoration: BoxDecoration(
      color: color,
      shape: BoxShape.circle,
    ),
    child: IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
      ),
      iconSize: iconSize,
    ),
  );
}

Widget buildCreatePost() {
  return Container(
    child: Column(
      children: [],
    ),
  );
}

class HomeScreenPatient extends StatefulWidget {
  const HomeScreenPatient({Key? key}) : super(key: key);

  @override
  State<HomeScreenPatient> createState() => _HomeScreenPatientState();
}

class _HomeScreenPatientState extends State<HomeScreenPatient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: NestedScrollView(
        floatHeaderSlivers: false,
        headerSliverBuilder: (context, isScroll) => [
          SliverAppBar(
            backgroundColor: Colors.black26,
            title: Text(
              'Challenge',
              style: TextStyle(
                color: Palette.facebookBlue,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.25,
              ),
            ),
            centerTitle: false,
            floating: true,
            actions: [
              buildCircleButton(
                icon: CommunityMaterialIcons.facebook_messenger,
                iconSize: 20,
                onPressed: () {
                  print('message');
                },
                color: Palette.facebookColor,
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.fromLTRB(12, 8.0, 12, 0),
              color: Colors.black54,
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                            "https://www.youtube.com/watch?v=bxIcWZIZ0HI&list=PLw6Y5u47CYq4oUuJMFrpXdHlQ56q0GEEn&index=4") /*AssetImage('assets/hom.jpg')*/,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'What \' s on your mind ',
                          ),
                        ),
                      )
                    ],
                  ),
                  const Divider(
                    height: 10,
                    thickness: 0.51,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          print('image');
                        },
                        child: Row(
                          children: [
                            Text('Image'),
                            Icon(Icons.image),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
        body: ListView.builder(
          itemBuilder: (context, index) => Container(
            color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          color: Colors.black54,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        print('profile');
                                      });
                                    },
                                    child: CircleAvatar(
                                      radius: 25,
                                      backgroundImage: NetworkImage(
                                          "https://www.youtube.com/watch?v=bxIcWZIZ0HI&list=PLw6Y5u47CYq4oUuJMFrpXdHlQ56q0GEEn&index=4"),
                                      // AssetImage('assets/hom.jpg'),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      print('UserName');
                                    },
                                    child: Text(
                                      "UserName",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              /* TextField(
                                decoration: InputDecoration(
                                  label: Text(' '),
                                ),
                              ),*/
                              Image(
                                image: NetworkImage(
                                    "https://www.youtube.com/watch?v=bxIcWZIZ0HI&list=PLw6Y5u47CYq4oUuJMFrpXdHlQ56q0GEEn&index=4"),
                                //  AssetImage('assets/hom.jpg',),
                                height: 250,
                                width: double.infinity,
                                fit: BoxFit.fill,
                              ),
                              Row(
                                children: [
                                  LikeButton(
                                    likeCount: 250,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
