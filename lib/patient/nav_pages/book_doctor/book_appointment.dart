import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:projectfinal/core/color_config/color.dart';

class BookAppointment extends StatelessWidget {
  const BookAppointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
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
              ],
            ),
            SizedBox(
              height: 450,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                  color: Colors.grey,
                ),
                child: Column(
                  children: [
                    Text(
                      "You  is Booked You can Message ",
                      style: TextStyle(
                        fontSize: 25,
                        color: Palette.pColor,
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CommunityMaterialIcons.facebook_messenger,
                          color: Palette.wColor,
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
Column(
          children: [
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

          ],
        ),
 */
