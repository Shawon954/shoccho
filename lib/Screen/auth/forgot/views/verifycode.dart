import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:shoccho/AppString/appstring.dart';
import 'package:shoccho/AppStyle/appstyle.dart';
import 'package:shoccho/Button/custom_button.dart';


class FOEGOTVERIFICATION extends StatefulWidget {
  const FOEGOTVERIFICATION({super.key});

  @override
  State<FOEGOTVERIFICATION> createState() => _FOEGOTVERIFICATIONState();
}

class _FOEGOTVERIFICATIONState extends State<FOEGOTVERIFICATION> {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height:height,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.black45,
                ),
                child: Container(
                  height: height,
                  width: width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          opacity: .6,
                          image: AssetImage(
                            'assets/introimage/back.png',
                          ),
                          fit: BoxFit.cover
                      )),
                  child:    Stack(
                    children: [

                      Positioned(
                        bottom: 50,
                        left: 18,
                        child: Center(
                          child: Container(
                            height:383.h,
                            width: 352.w,
                            decoration: BoxDecoration(
                                color: Color(0xfff5f5f5),
                                borderRadius:
                                BorderRadius.all(Radius.circular(32))),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Positioned(
                                      top: -50,
                                      child: CircleAvatar(
                                        radius: 50.r,
                                        backgroundColor: Color(0xffFFFFFF),
                                        child: Center(
                                            child: Image.asset('assets/login/shoccho_logo.png',height: 65.h,width: 65.w,)),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 60.h,
                                    ),
                                    Text(
                                      AppStrings().ForgotVarification,
                                      style: TextStyle(
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Gilroy',
                                          color: Color(0xff010202)),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      AppStrings().Varificationtitle,
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff9A99A0),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20).r,
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          AppStrings().VarificationText,
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff9A99A0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),



                                    SizedBox(
                                      height: 70.h,
                                    ),
                                    Text(AppStrings().OtpSecText,),
                                    SizedBox(
                                      height: 10.h,
                                    ),

                                    SizedBox(
                                      height: 60,
                                      width: 312,
                                      child: ElevatedButton(
                                        onPressed: (){



                                        },
                                        child: Text(AppStrings().Button,style:AppStyle().Submittextstyle),style: BUTTON().buttonStyle,),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    GestureDetector(onTap: (){},
                                      child: Text(
                                        AppStrings().RecendCode,

                                      ),
                                    ),
                                    
                                    // Row(
                                    //   mainAxisAlignment: MainAxisAlignment.center,
                                    //   children: [
                                    //     Text(
                                    //       AppStrings().SpanTextOne,
                                    //       style: AppStyle().sinupTextstyle,
                                    //     ),
                                    //     SizedBox(
                                    //       width: 5.h,
                                    //     ),
                                    //     InkWell(
                                    //       onTap: () {
                                    //         print('Click Ok');
                                    //       },
                                    //       child: Text(
                                    //         AppStrings().SpanTextTwo,
                                    //         style: AppStyle().sinupbuttonstyle,
                                    //       ),
                                    //     ),
                                    //     SizedBox(
                                    //       width: 5.h,
                                    //     ),
                                    //     Text(
                                    //       AppStrings().SpanTextThree,
                                    //       style: AppStyle().sinupTextstyle,
                                    //     ),
                                    //   ],
                                    // )
                                  ],
                                ),

                              ],

                            ),

                          ),

                        ),

                      ),
                      SizedBox(height: 30,)
                    ],

                  ),
                ) ,

              ),




            ],
          ),
        ),
      ),
    );
  }
}
