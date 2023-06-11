
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:shoccho/AppColors/appcolors.dart';
import 'package:shoccho/AppString/appstring.dart';
import 'package:shoccho/AppStyle/appstyle.dart';
import 'package:shoccho/Screen/home/controllers/home_contoller.dart';



class HOMEVIEW extends GetView<HOMECONTOLLER> {


  final List name=[
    'Shawon',
    'Akib',
    'Dipto',
    'Arafat vai',
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.lite_color,
         body: SingleChildScrollView(
           scrollDirection: Axis.vertical,
           child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10).r,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row
                  (mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Stack(clipBehavior: Clip.none, children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8, left: 10).r,
                      child: Container(
                        height: 50.h,
                        width: 280.w,
                        decoration: BoxDecoration(
                            color: AppColors.white_color,
                            borderRadius: BorderRadius.all(Radius.circular(30)).r,
                            boxShadow: [
                              BoxShadow(
                                  color: AppColors.lite_color,
                                  blurRadius: 20,
                                  blurStyle: BlurStyle.outer,
                                  offset: Offset(1, 1))
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 70),
                          child: Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                Text(
                                  'Hello,',
                                  style: AppStyle().Subtetxtstylr,
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Text(
                                  AppStrings().name,
                                  style: AppStyle().Subtetxtstylr,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),



                    Container(

                     decoration: BoxDecoration(
                       color:AppColors.lightblue_color,
                       borderRadius: BorderRadius.all(Radius.circular(50)).r
                     ),
                      child: Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 2,bottom: 2,left: 2,right: 2).r,
                          child: const CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('assets/men/genelmen.jpg'),
                          ),
                        ),
                      ),
                    )
                  ]),
                  SizedBox(
                    width: 10.w,
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: AppColors.white_color,
                    child: IconButton(
                      onPressed: () {


                      },
                      icon: Icon(
                        Icons.notifications_on_rounded,
                        size: 30,
                      ),
                      color: AppColors.blueaccent_color,
                    ),
                  ),
                ]),
                SizedBox(
                  height: 10.h,
                ),
                Center(
                  child: Container(
                      height: 50.h,
                      width: 180.w,
                      child: SvgPicture.asset('assets/logo/shoccho_logo.svg')),
                ),
                SizedBox(
                  height: 10.h,
                ),

                 Text('Quick access',style: AppStyle().shocchoxtstylr,),
                SizedBox(
                  height: 10.h,
                ),

             Container(
               height: 250.h,
               width: double.infinity,
               color: Colors.deepOrange,

             ),

                SizedBox(
                  height: 10.h,
                ),


                Text('Other access',style: AppStyle().shocchoxtstylr,),
                SizedBox(
                  height: 10.h,
                ),

                Container(
                  height: 350.h,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: name.length,
                    itemBuilder: (BuildContext context,index){
                       return Container(
                         height: 90.h,
                         width: double.infinity,
                         child: Card(
                           color: AppColors.white_color,
                           elevation: 5,
                           child: Row(

                           ),
                         ),
                       );

                    }

                  ),
                )


              ],
            ),
           ),
         ),
      ),
    );
  }
}

