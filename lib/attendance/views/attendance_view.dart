
import 'package:flutter/material.dart';
import 'package:shoccho/AppColors/appcolors.dart';

class ATTENVIEW extends StatefulWidget {
  const ATTENVIEW({super.key});

  @override
  State<ATTENVIEW> createState() => _ATTENVIEWState();
}

class _ATTENVIEWState extends State<ATTENVIEW> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whitelite_color,

        body: Center(

          child: Text('ATTEN PAGE ok'),


        ),

      ),
    );
  }
}
