import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:projectfinal/core/color_config/color.dart';
import 'package:projectfinal/doctor/doctor_settingscreen/my_account.dart';

Widget ProfileSettings(
  String text,
  IconData icon,
  IconData icons,
  Function() OnTap,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
    child: GestureDetector(
      onTap: OnTap,
      child: Container(
        padding: EdgeInsets.only(),
        height: 55,
        width: 400,
        decoration: BoxDecoration(
          color: Color(0xfff5f6f9),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Row(
          children: [
            SizedBox(
              width: 15,
            ),
            Icon(
              icon,
              color: Palette.pColor,
              size: 25,
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  color: Palette.bColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Icon(
              icons,
              color: Palette.pColor,
              size: 25,
            ),
          ],
        ),
      ),
    ),
  );
}

Widget buildProfilePri() {
  return SizedBox(
      height: 200,
      width: 200,
      child: Stack(
        fit: StackFit.expand,
        children: [
          GestureDetector(
            onTap: () {
              print("image profile");
            },
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: SizedBox(
              height: 46,
              width: 46,
              child: Container(
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Color(0xfff5f6f9),
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
          )
        ],
      ));
}

class SettingScreenP extends StatefulWidget {
  const SettingScreenP({Key? key}) : super(key: key);

  @override
  State<SettingScreenP> createState() => _SettingScreenPState();
}

class _SettingScreenPState extends State<SettingScreenP> {
  File? _profileImage;

  final _signupFormKey = GlobalKey<FormState>();

  Future _pickProfileImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() => _profileImage = imageTemporary);
    } on PlatformException catch (e) {
      debugPrint('Failed to pick image error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "profile setting ",
          style: TextStyle(
            color: Palette.bColor,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.only(
                  top: 40.0,
                  bottom: 40,
                ),
                child: Row(
                  children: [
                    SizedBox(
                        height: 200,
                        width: 200,
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            GestureDetector(
                              onTap: () {
                                print("image profile");
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.grey.shade200,
                                backgroundImage: _profileImage != null
                                    ? FileImage(_profileImage!)
                                    : null,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      bottom: 5,
                                      right: 5,
                                      child: GestureDetector(
                                        onTap: _pickProfileImage,
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.blue.shade400,
                                            border: Border.all(
                                                color: Colors.white, width: 3),
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          child: const Icon(
                                            Icons.camera_alt_sharp,
                                            color: Colors.white,
                                            size: 25,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            /*   Positioned(
                        right: 0,
                        bottom: 0,
                        child: SizedBox(
                          height: 46,
                          width: 46,
                          child: Container(
                            padding: EdgeInsets.zero,
                            decoration: BoxDecoration(
                              color: Color(0xfff5f6f9),
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
                      )*/
                          ],
                        )),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "User Name ",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 22,
                      ),
                    ),
                  ],
                )),
            ProfileSettings("My Account", Icons.account_circle_outlined,
                Icons.arrow_forward_ios, () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyAccount(),
                  ));
            }),

            ProfileSettings(
                "LogOut", Icons.logout_rounded, Icons.arrow_forward_ios, () {
              //  FirebaseAuth.instance.signOut();
            }),
          ],
        ),
      ),
    );
  }
}
