import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:projectfinal/doctor/doctor_chatscreen/doctor_chatscreen.dart';
import 'package:projectfinal/doctor/doctor_homescreeen/screen_home.dart';
import 'package:projectfinal/doctor/doctor_profile/doctor_book.dart';
import 'package:projectfinal/doctor/doctor_settingscreen/doctor_settingscreen.dart';
import 'package:projectfinal/doctor/post_Screen/post_screen.dart';


class MainDoctor extends StatefulWidget {
  const MainDoctor({Key? key}) : super(key: key);

  @override
  State<MainDoctor> createState() => _MainDoctorState();
}

class _MainDoctorState extends State<MainDoctor> {
  @override
  List Pages = [
    FeedsScreen(),
    NewPostScreen(),
    DoctorChatScreen(),
    DoctorBookScreen(),
    SettingScreenP(),
  ];
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[currentIndex],
      bottomNavigationBar: Container(
        color: Colors.black,
        child: GNav(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
            gap: 8,
            backgroundColor: Colors.black12,
            color: Colors.green,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade300,
            onTabChange: onTap,
            tabs: [
              GButton(
                text: "Home",
                icon: Icons.home,
              ),
              GButton(
                text: "Post",
                icon: Icons.post_add,
              ),
              GButton(
                text: "Chat",
                icon: Icons.messenger,
              ),
              GButton(
                text: 'Profile',
                icon: Icons.person,
              ),
              GButton(
                text: "settings",
                icon: Icons.settings,
              ),
            ]),
      ),
    );
    ;
  }
}
