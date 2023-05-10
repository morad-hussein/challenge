import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projectfinal/core/color_config/color.dart';

class HeaderwithSearch extends StatelessWidget {
  HeaderwithSearch({Key? key , required this.size}) : super(key: key);
  final  Size size;

  @override
  Widget build(BuildContext context) {
    return  Container(

      height: size.height * 0.2,
      margin: EdgeInsets.only(
        bottom: 20 * 2.5,
      ),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
              right: 20,
              left: 20,
              bottom: 56,
            ),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
                color: kmainColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                )),
            child: Row(
              children: [

                Text(
                  "Hi Uishopy!",
                  style: TextStyle(

                    color: Colors.white,fontWeight: FontWeight.w800, fontSize: 30,
                  ),
                ),
                Spacer(),
                CircleAvatar(
                    radius: 35,
                    child: SvgPicture.asset('assets/image/ui.svg')),

              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 22),
              margin: EdgeInsets.symmetric(horizontal: kPadding),
              height: 54,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kmainColor.withOpacity(0.23),
                    )
                  ]),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            helperStyle: TextStyle(
                              color: kmainColor.withOpacity(0.5),
                              fontSize: 20,
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      SvgPicture.asset('assets/icons/icon_search.svg'),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
