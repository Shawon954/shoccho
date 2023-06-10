import 'package:flutter/material.dart';
import 'package:shoccho/AppColors/appcolors.dart';


class PROFILEVIEW extends StatefulWidget {
  const PROFILEVIEW({super.key});

  @override
  State<PROFILEVIEW> createState() => _PROFILEVIEWState();
}

class _PROFILEVIEWState extends State<PROFILEVIEW> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whitelite_color,

        body: Center(
          child: Text('PROFILE'),

        ),

      ),
    );
  }
}
