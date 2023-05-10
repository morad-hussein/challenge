import 'dart:io';

import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:projectfinal/core/color_config/color.dart';

class DoctorBookScreen extends StatelessWidget {
  const DoctorBookScreen({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {


    return Scaffold(

        body: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  print("profile");
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.1,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/drimage/doctor.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 30.0,
                          right: 10,
                          left: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Spacer(),
                            Container(
                              margin: EdgeInsets.all(8),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Color(0XFFF2F8FF),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 4,
                                      spreadRadius: 2,
                                    )
                                  ]),
                              child: Center(
                                child: IconButton(
                                  icon: Icon(Icons.edit),
                                  onPressed: (){
                                    print("edit profile image");
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Patients',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0XFF0C84FF),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  '2K',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Experience',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0XFF0C84FF),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  '3 yr',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Rating',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Palette.pColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  '3.5',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color:Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Dr Name',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                            color: Palette.pColor,
                          ),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.all(8),
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              color: Color(0XFFF2F8FF),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                )
                              ]),
                          child: Center(
                            child: IconButton(
                              icon: Icon(Icons.edit),
                              onPressed: (){
                                print("edit profile image");
                              },
                            ),
                          ),
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            CommunityMaterialIcons.heart_plus,
                            color: Colors.red,
                            size: 28,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Psychological',
                          style: TextStyle(
                            fontSize: 16,
                            color: Palette.pColor.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Assistant Professor- GRIPMER (The Ganga Ram Institute Of Post Graduate Medical Education & Research).",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black12.withOpacity(0.6),
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Book Date",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Palette.bColor.withOpacity(0.6),
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 70,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 5),
                                padding: EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 25),
                                decoration: BoxDecoration(
                                  color: index == 1
                                      ? Palette.pColor
                                      : Color(0XFFF2F8F),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 4,
                                      spreadRadius: 2,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      "${index + 10}",
                                      style: TextStyle(
                                        color: index == 1
                                            ? Palette.wColor
                                            : Palette.bColor.withOpacity(0.6),
                                      ),
                                    ),
                                    Text(
                                      "OCT",
                                      style: TextStyle(
                                        color: index == 1
                                            ? Palette.wColor
                                            : Palette.bColor.withOpacity(0.6),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Book Time',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Palette.bColor.withOpacity(0.6),
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 70,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              child: Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 5),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 25),
                                  decoration: BoxDecoration(
                                    color: index == 2
                                        ? Palette.pColor
                                        : Color(0XFFF2F8F),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 4,
                                        spreadRadius: 2,
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child: Text(
                                      "${index + 10}: 00 PM",
                                      style: TextStyle(
                                        color: index == 1
                                            ? Palette.wColor
                                            : Palette.bColor.withOpacity(0.6),
                                      ),
                                    ),
                                  )),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                 /*   Material(
                      color: Palette.pColor,
                      borderRadius: BorderRadius.circular(10),
                      child: TextButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  titlePadding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                  backgroundColor: Palette.bColor.withOpacity(0.5),
                                  content: Text("You are Booked ",style: TextStyle(color: Colors.white),),

                                  actions: [
                                    Center(
                                        child: Text(
                                          "You can message your doctor",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        )),
                                    Center(
                                        child: IconButton(
                                          onPressed: () {
                                            *//* Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ChatScreen()));*//*
                                            print("go to chat screen");
                                          },
                                          icon: Icon(Icons.chat_bubble_rounded,color: Palette.facebookBlue,size: 35,),
                                        )),
                                  ],
                                );
                              });
                        },
                        child: Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Text(
                              "Book Appointment",
                              style: TextStyle(
                                color: Palette.wColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),


                      *//*GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BookAppointment(),
                            ));
                      },
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Text(
                            "Book Appointment",
                            style: TextStyle(
                              color: Palette.wColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),*//*
                    ),
                    SizedBox(height: 20,),*/
                  ],
                ),
              )
            ],
          ),
        ),);
  }
}
