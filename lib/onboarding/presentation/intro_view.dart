import 'package:flutter/material.dart';
import 'package:projectfinal/onboarding/widgets/intro_body_view.dart';

class IntroView extends StatelessWidget {
  const IntroView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroBodyView(),
    );
  }
}
