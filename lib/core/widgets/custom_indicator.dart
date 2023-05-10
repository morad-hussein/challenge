import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:projectfinal/core/color_config/color.dart';


class  CustomIndicator extends StatelessWidget {
  const  CustomIndicator({Key? key, required this.detIndex}) : super(key: key);
      final double? detIndex;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: DotsDecorator(
          color: Colors.transparent,
          activeColor: KmainColors,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide( color: KmainColors),

          )
      ),
      dotsCount: 3,
      position: detIndex!,

    );
  }
}
