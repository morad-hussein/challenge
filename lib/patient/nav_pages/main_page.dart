
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:projectfinal/patient/nav_pages/book_doctor/doctor_book.dart';
import 'package:projectfinal/patient/nav_pages/chat/chat_profile.dart';
import 'package:projectfinal/patient/nav_pages/home/homep_screen.dart';
import 'package:projectfinal/patient/nav_pages/home/newpost.dart';
import 'package:projectfinal/patient/nav_pages/profile_Patient/setting_ptofile/setting_screen.dart';



class MainPatientScreen extends StatefulWidget {
  const MainPatientScreen({Key? key}) : super(key: key);

  @override
  State<MainPatientScreen> createState() => _MainPatientScreenState();
}

class _MainPatientScreenState extends State<MainPatientScreen> {
  List Pages=[
    HomePScreen(),
    NewPostPatient(),
    DoctorBookScreen(),
    ChatScreenProfile(),
    SettingScreenP(),
  ];
  int currentIndex=0;
  void onTap(int index){
    setState(() {
      currentIndex=index;
    });
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[currentIndex],
      bottomNavigationBar: GNav(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
        gap: 8,
        backgroundColor: Colors.black12,
        color: Colors.green,
        activeColor: Colors.white,
        tabBackgroundColor: Colors.grey.shade300,
        onTabChange: onTap,


        tabs: [
          GButton(
            text: "home",
            icon: Icons.home,
          ),
          GButton(
            text: "Post",
            icon: Icons.post_add,
          ),
          GButton(
            text: "DoctorBook",
            icon: Icons.co_present_rounded,
          ),
          GButton(
            text: "Chat",
            icon: Icons.chat_bubble,
          ),


          GButton(
            text: "Setting",
            icon:Icons.settings,
          ),

        ],
      ),

    );
  }
}
