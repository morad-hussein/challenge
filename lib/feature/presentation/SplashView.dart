


import 'package:flutter/material.dart';
import 'package:projectfinal/feature/widget/splashview%20_bady.dart';

import '../../core/color_config/color.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scafColors,
      body: SplashViewBody(),
    );
  }
}
