


import 'package:flutter/material.dart';
import 'package:projectfinal/core/color_config/color.dart';
import 'package:projectfinal/patient/nav_pages/book_doctor/doctor_section.dart';
import 'package:projectfinal/patient/nav_pages/book_doctor/doctorsection2.dart';



class DoctorBookScreen extends StatefulWidget {
  const DoctorBookScreen({Key? key}) : super(key: key);

  @override
  State<DoctorBookScreen> createState() => _DoctorBookScreenState();
}

class _DoctorBookScreenState extends State<DoctorBookScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3.5,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Palette.pColor.withOpacity(0.8),
                      Palette.pColor,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  top: 15,
                                  bottom: 20,
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    print('profile');
                                  },
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage:
                                        AssetImage('assets/image/logo .png'),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.notifications_outlined,
                                color: Palette.wColor,
                                size: 30,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Hi , Dear ',
                            style: TextStyle(
                              color: Palette.wColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Your Health is Our\n First Priority',
                            style: TextStyle(
                              color: Palette.wColor,
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        left: 15.0,
                        bottom: 3,
                      ),
                      child: Text(
                        'Recommended Doctors',
                        style: TextStyle(
                          color: Palette.bColor.withOpacity(0.7),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          DoctorSection(),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Stack(
                        children: [
                          DoctorSection2(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
