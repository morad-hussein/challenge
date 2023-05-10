import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projectfinal/core/size_config/size_config.dart';
import 'package:projectfinal/core/widgets/space.dart';


class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.image})
      : super(key: key);
  final String? title;
  final String? subTitle;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(value: 22),
        SizedBox(
           height: SizeConfig.defaultSize! *22,
            child: Image.asset(image!)),
        const VerticalSpace(value: 2),

        Text(
          title!,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xff78787c),
          ),
          textAlign: TextAlign.left,
        ),
        const VerticalSpace(value: 1.5),

        Text(
          subTitle!,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xff78787c),
          ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
