import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:projectfinal/core/size_config/size_config.dart';
import 'package:projectfinal/onboarding/presentation/intro_view.dart';


class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation? animation;

  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds:600));
    animation = Tween<double>(begin: 0.2, end: 0.5).animate(animationController!);
    animationController?.repeat();
    getNextView();
  }
  void dispose(){
    super.dispose();
    animationController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Column(
        children: [
          Spacer(),
          AnimatedBuilder(
            animation: animation!,
            builder: (context, _) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 55),
              child: Opacity(
                opacity: animation!.value,
                child: Column(
                  children: [

                    Text(
                      "Welcome Dear ",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    Text(
                      "to  Challenge ",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            height: 400,
            width: MediaQuery.of(context).size.width * 90,
            child: SvgPicture.asset('assets/icons/SplashView .svg'),
            //child: Image.asset("assets/logo .png"),
          ),
        ],
      ),
    );
  }

  void getNextView() {
    Future.delayed(Duration(seconds: 5),(){
      Get.to(()=>IntroView(), transition: Transition.fade);
    });
  }
}
