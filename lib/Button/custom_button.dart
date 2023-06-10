


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoccho/AppColors/appcolors.dart';

class CUSTOMBUTTON extends StatelessWidget {

 String title;
 final Function onAction;
 CUSTOMBUTTON({required this.title, required this.onAction});




  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){onAction;}, child: Text(title));

  }
}




class BUTTON{
 ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    backgroundColor: AppColors.blueaccent_color,
    shape: RoundedRectangleBorder(
     borderRadius: BorderRadius.all(Radius.circular(30.r))
    )

 );
}