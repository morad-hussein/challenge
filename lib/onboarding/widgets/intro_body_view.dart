import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectfinal/core/size_config/size_config.dart';
import 'package:projectfinal/core/widgets/custom_Page_view.dart';
import 'package:projectfinal/core/widgets/custom_button.dart';
import 'package:projectfinal/core/widgets/custom_indicator.dart';
import 'package:projectfinal/onboarding/widgets/two_screen/two_screen.dart';

class IntroBodyView extends StatefulWidget {
  const IntroBodyView({Key? key}) : super(key: key);

  @override
  State<IntroBodyView> createState() => _IntroBodyViewState();
}

class _IntroBodyViewState extends State<IntroBodyView> {
  PageController? pageController;

  @override
  void initState() {
    pageController = PageController(
      initialPage: 0,
    )
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(
          pageController: pageController,
        ),
        Positioned(
          bottom: SizeConfig.defaultSize! * 21,
          left: 0,
          right: 0,
          child: CustomIndicator(
            detIndex: pageController!.hasClients ? pageController!.page : 0,
          ),
        ),
        Visibility(
          visible: pageController!.hasClients
              ? (pageController!.page == 2 ? false : true)
              : true,
          child: Positioned(
            top: SizeConfig.defaultSize! * 10,
            right: 32,
            child: Text(
              "Skip",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: const Color(0xff898989),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Positioned(
            left: SizeConfig.defaultSize! * 10,
            right: SizeConfig.defaultSize! * 10,
            bottom: SizeConfig.defaultSize! * 10,
            child: CustomGenerButton(
              onTap: () {
                if (pageController!.page! < 2) {
                  pageController!.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                } else{
                  Get.to(() => TwoButtonScreen(), transition: Transition.rightToLeft, duration:  Duration( milliseconds: 300));
                }
              },
              text: pageController!.hasClients
                  ? (pageController!.page == 2 ? "Get started" : "Next")
                  : "Next",
            )),
      ],
    );
  }
}
