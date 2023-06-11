
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoccho/AppColors/appcolors.dart';



class AppStyle{

    // TextFormFiled Style //
    InputDecoration textinputdecoration(String hint,icon,) => InputDecoration(
     hintText: hint,
     prefixIcon: icon,

     border: InputBorder.none,
     focusedBorder: OutlineInputBorder(
       borderSide: BorderSide.none,
       borderRadius: BorderRadius.all(Radius.circular(30.r))
     ),
     hintStyle: TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeight.w400,
      fontFamily: 'Gilroy',
      color: Color(0xff38383c),
     ),
  );
    InputDecoration passinputdecoration(String hint,icon,) => InputDecoration(
     hintText: hint,
     prefixIcon: icon,

     border: InputBorder.none,
     focusedBorder: OutlineInputBorder(
       borderSide: BorderSide.none,
       borderRadius: BorderRadius.all(Radius.circular(30.r))
     ),
     hintStyle: TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeight.w400,
      fontFamily: 'Gilroy',
      color: Color(0xff38383c),
     ),
  );
    // TextFormFiled Style //



    // FORGOT RESEND Button //
     // FORGOT RESEND Button //
     TextStyle buttontextstyle = TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500,
         fontFamily: 'Gilroy',color: AppColors.lightblack_color);
    // Singup Button //


    TextStyle Subtetxtstylr = TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold,color: AppColors.black_color, fontFamily: 'Gilroy',);
    TextStyle Resendbutton = TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: AppColors.perpul_color, fontFamily: 'Gilroy',);
    TextStyle Submittextstyle = TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w600,color: AppColors.white_color, fontFamily: 'Gilroy',);
    TextStyle Generationextstylr = TextStyle(fontSize: 32.sp,fontWeight: FontWeight.w800,color: AppColors.black_color, fontFamily: 'Gilroy',);
    TextStyle shocchoxtstylr = TextStyle(fontSize: 28.sp,fontWeight: FontWeight.w600,color: AppColors.black_color, fontFamily: 'Gilroy',);


}