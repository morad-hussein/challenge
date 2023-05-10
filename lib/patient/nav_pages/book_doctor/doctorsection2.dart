
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:projectfinal/core/color_config/color.dart';
import 'package:projectfinal/patient/nav_pages/book_doctor/doctor_profile/doctor_profile.dart';




class DoctorSection2 extends StatelessWidget {
  const DoctorSection2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
        color: Color(0xFFF2F8FF),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            spreadRadius: 2,
          ),
        ],
      ),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: 100,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  right: 8,
                  bottom: 8,
                ),
                child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width * 95,
                  decoration: BoxDecoration(
                    color: Color(0xFFF2F8FF),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 300,
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      print('text');
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                        ),
                                      ),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => DoctorProfile(),
                                              ));
                                        },
                                        child: Container(
                                          height: 200,
                                          width: 200,
                                          child: Image(
                                            image:
                                                AssetImage('assets/drimage/doctor.jpg'),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      margin: EdgeInsets.all(8),
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0XFFF2F8FF),
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 4,
                                            spreadRadius: 2,
                                          ),
                                        ],
                                      ),
                                      child: Center(
                                        child: LikeButton(
                                          size: 28,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 4,
                                      left: 5,
                                    ),
                                    child: Text(
                                      'Dr Name',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Palette.pColor,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 4,
                                      left: 5,
                                    ),
                                    child: Text(
                                      'Surgeon',
                                      style: TextStyle(
                                        color: Palette.bColor.withOpacity(0.6),
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            print('star');
                                          },
                                          icon: Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 20,
                                          )),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '4.9',
                                        style: TextStyle(
                                          color:
                                              Palette.bColor.withOpacity(0.6),
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
