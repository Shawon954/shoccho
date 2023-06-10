
import 'package:flutter/gestures.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoccho/AppColors/appcolors.dart';
import 'package:shoccho/AppString/appstring.dart';
import 'package:shoccho/AppStyle/appstyle.dart';



class HOMEVIEW extends StatefulWidget {
  const HOMEVIEW({Key? key}) : super(key: key);

  @override
  State<HOMEVIEW> createState() => _HOMEVIEWState();
}

class _HOMEVIEWState extends State<HOMEVIEW> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.lite_color,
         body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
          child: Column(
            children: [
              Row
                (mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Stack(clipBehavior: Clip.none, children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 10),
                    child: Container(
                      height: 50.h,
                      width: 280.w,
                      decoration: BoxDecoration(
                          color: AppColors.white_color,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
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
                                style: AppStyle().Subtextstylr,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                AppStrings().name,
                                style: AppStyle().Subtextstylr,
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
                     borderRadius: BorderRadius.all(Radius.circular(50)).w
                   ),
                    child: Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2,bottom: 2,left: 2,right: 2).r,
                        child: CircleAvatar(
                          radius: 30,

                          backgroundImage: AssetImage('assets/men/genelmen.jpg'),
                        ),
                      ),
                    ),
                  )
                ]),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: AppColors.white_color,
                  child: IconButton(
                    onPressed: () {},
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
              Container(
                  height: 50,
                  width: 180,
                  child: SvgPicture.asset('assets/logo/shoccho_logo.svg'))



            ],
          ),
         ),
      ),
    );
  }
}
