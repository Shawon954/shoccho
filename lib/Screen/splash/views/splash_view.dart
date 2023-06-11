import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shoccho/AppColors/appcolors.dart';
import 'package:shoccho/Route/app_route.dart';
import 'package:shoccho/Screen/splash/controllers/splash_controller.dart';



class SPLASHVIEW extends GetView<SPLAHCONTROLLER> {


  @override
  Widget build(BuildContext context) {
     Future.delayed(Duration(seconds: 3),()=>Get.offAndToNamed(AppPage.INTRO));
    return Scaffold(
      backgroundColor:AppColors.Splash_color,
      body: Center(child: SvgPicture.asset('assets/logo/shoccho_logo.svg')),
    );
  }
}
