
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoccho/AppColors/appcolors.dart';
import 'package:shoccho/Screen/attendance/controller/attendance_controller.dart';

class ATTENVIEW extends GetView<ATTENCONTROLLER> {
  const ATTENVIEW({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.lite_color,

        body: Center(

          child: Text('ATTEN PAGE ok'),


        ),

      ),
    );
  }
}
