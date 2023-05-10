

import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:projectfinal/core/color_config/color.dart';
import 'package:projectfinal/patient/nav_pages/profile_Patient/profile_appbar.dart';


class ProfilePagePatient extends StatelessWidget {
  const ProfilePagePatient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 3.41,
                        decoration: BoxDecoration(
                          color: Palette.bColor.withOpacity(0.85),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 6,
                              spreadRadius: 2,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            ProfileAppBar(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 20.0,
                                        left: 70,
                                      ),
                                      child: buildProfilePri(),
                                    ),
                                    Column(
                                      children: [
                                        TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              "User Name",
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            )),
                                        TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              "Age : 29",
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            )),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 230.0),
                              child: Row(
                                children: [
                                  TextButton(

                                      onPressed: () {
                                        print("Post");
                                      },
                                      child: Text(
                                        "Your Posts",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20,
                                            color: Palette.iconColor,),
                                      )),
                                  IconButton(onPressed: (){}, icon: Icon(CommunityMaterialIcons.sticker_emoji,
                                  color: Palette.iconColor,))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                    top: 10,
                  )),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildProfilePri() {
  return SizedBox(
      height: 125,
      width: 125,
      child: Stack(
        fit: StackFit.expand,
        children: [
          GestureDetector(
            onTap: () {
              print("image profile");
            },
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://www.youtube.com/watch?v=bxIcWZIZ0HI&list=PLw6Y5u47CYq4oUuJMFrpXdHlQ56q0GEEn&index=4"),
            ),
          ),
          Positioned(
            right: -10,
            bottom: 0,
            child: SizedBox(
              height: 46,
              width: 50,
              child: CircleAvatar(
                backgroundColor:  Color(0xfff5f6f9),
                child: Container(
                  padding: EdgeInsets.zero,
                  decoration: BoxDecoration(
                    // color: Color(0xfff5f6f9),
                    borderRadius: BorderRadius.circular(50),

                  ),
                  child: IconButton(
                    onPressed: () {
                      print("upload");
                    },
                    icon: Icon(
                      Icons.camera_alt_outlined,
                      color: Palette.pColor,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ));
}

Widget PostUser() {
  return ListView.builder(
    shrinkWrap: true,
    scrollDirection: Axis.vertical,
    itemCount: 10,
    itemBuilder: (context, index) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 3,
                      bottom: 5,
                      left: 2,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        print('profile');
                      },
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/coro.jpg'),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        print('profile');
                      },
                      child: Text(
                        'Morad Hussein',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  right: 10,
                ),
                child: IconButton(
                  onPressed: () {
                    print("test");
                  },
                  icon: Icon(Icons.more_horiz_sharp),
                ),
              ),
            ],
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 350,
              minWidth: 150,
              minHeight: 150,
              maxWidth: MediaQuery.of(context).size.width,
            ),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.99,
              child: GestureDetector(
                onTap: () {
                  print('Image');
                },
                child: Image(
                  image: AssetImage('assets/child.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.33,
                child: Container(
                  width: 100,
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 70,
                        child: LikeButton(
                          likeCount: 150,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text('Like'),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.33,
                child: GestureDetector(
                  onTap: () {
                    print('comment');
                  },
                  child: Container(
                    width: 100,
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 50,
                          child: IconButton(
                            onPressed: () {
                              print("comment");
                            },
                            icon: Icon(
                              CommunityMaterialIcons.comment,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text('comment'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.33,
                child: Container(
                  width: 100,
                  child: Row(
                    children: [
                      Container(
                          alignment: Alignment.center,
                          width: 50,
                          child: IconButton(
                            onPressed: () {
                              print('save');
                            },
                            icon: Icon(
                              Icons.save,
                              color: Colors.green,
                            ),
                          )),
                      Container(
                        alignment: Alignment.center,
                        child: Text('save'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    },
  );
}

