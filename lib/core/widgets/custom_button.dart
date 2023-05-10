import 'package:flutter/material.dart';
import 'package:projectfinal/core/color_config/color.dart';
import 'package:projectfinal/core/size_config/size_config.dart';


class CustomGenerButton extends StatelessWidget {
   CustomGenerButton({Key? key,required this.text,required this.onTap}) : super(key: key);
 final String? text;
 final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
                   color: KmainColors,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child:  Text(
            text!,
            style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: const Color(0xffffffff),
          ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}
