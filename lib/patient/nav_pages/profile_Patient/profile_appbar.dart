
import 'package:flutter/material.dart';
import 'package:projectfinal/core/color_config/color.dart';
import 'package:projectfinal/patient/nav_pages/book_doctor/doctor_book.dart';


import 'setting_ptofile/setting_screen.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DoctorBookScreen(),
              ));
        },
        icon: Icon(
          Icons.arrow_back,
          color: Palette.pColor,
          size: 25,
        ),
      ),
      title: Text(
        "Profile",
        style: TextStyle(
          color: Palette.pColor,
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingScreenP(),
                  ));
            },
            icon: Icon(
              Icons.settings,
              color: Palette.pColor,
              size: 25,
            ))
      ],
    );
  }
}
