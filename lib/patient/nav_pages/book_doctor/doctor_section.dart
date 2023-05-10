
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:projectfinal/core/color_config/color.dart';
import 'package:projectfinal/patient/nav_pages/book_doctor/doctor_profile/doctor_profile.dart';



class DoctorSection extends StatelessWidget {
  const DoctorSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 100,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 300,
                width: 200,
                margin: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 20,
                ),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                              child: Image.asset('assets/drimage/doctor.jpg'),
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
                              /* IconButton(
                              onPressed: (){
                                print('like');
                              },
                              icon: Icon(
                                Icons.favorite_border,
                              color: Palette.pColor,
                                size: 28,
                              ),

                            ),*/
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'DR NAME',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Palette.pColor,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'Surgeon',
                            style: TextStyle(
                              color: Palette.bColor.withOpacity(0.6),
                              fontSize: 18,
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
                                  color: Palette.bColor.withOpacity(0.6),
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
