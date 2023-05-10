import 'package:flutter/material.dart';
import 'package:projectfinal/core/widgets/page_view.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({Key? key, this.pageController}) : super(key: key);
   final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController ,
      children: [
        PageViewItem(
            title: "Challenge",
            subTitle: "You will find your yourself",
            image: "assets/image/logo .png"),
        PageViewItem(
            title: "Challenge",
            subTitle: "You can social  and chat communication",
            image: "assets/image/chat_log.jpg"),
        PageViewItem(
            title: "Challenge",
            subTitle: "You can Book Doctor ",
            image: "assets/image/doctor_logo.jpg"),
      ],
    );
  }
}
