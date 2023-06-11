import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:shoccho/AppString/appstring.dart';
import 'package:shoccho/AppStyle/appstyle.dart';
import 'package:shoccho/Button/custom_button.dart';
import 'package:shoccho/Screen/auth/forgot/forgotverify/controller/verifycontroller.dart';

import 'package:sms_autofill/sms_autofill.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

class FOEGOTVERIFICATION extends GetView<VERIFYCONTROLLER> {


  @override
  Widget build(BuildContext context) {




    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 844.h,
                width: 390.w,
                decoration: BoxDecoration(
                  color: Colors.black45,
                ),
                child: Container(
                  height: 844.h,
                  width: 390.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          opacity: .6,
                          image: AssetImage(
                            'assets/introimage/back.png',
                          ),
                          fit: BoxFit.cover)),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 50,
                        left: 18,
                        child: Center(
                          child: Container(
                            height: 383.h,
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
                                            child: Image.asset(
                                          'assets/login/shoccho_logo.png',
                                          height: 65.h,
                                          width: 65.w,
                                        )),
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
                                      padding:
                                          const EdgeInsets.only(left: 20).r,
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

                                    Padding(
                                      padding: const EdgeInsets.only(
                                              left: 15, right: 15).r,
                                      child:  Obx(()=>    PinFieldAutoFill(
                                        decoration: UnderlineDecoration(

                                          textStyle: const TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                          colorBuilder: FixedColorBuilder(
                                            Colors.transparent,
                                          ),
                                          bgColorBuilder: FixedColorBuilder(
                                            Color(0xffe0e9f8),
                                          ),
                                        ),
                                        controller: controller.otpEditingController,
                                        currentCode: controller.messageOtpCode.value,
                                        onCodeSubmitted: (code) {},
                                        onCodeChanged: (code) {
                                         controller.messageOtpCode.value = code!;

                                         controller.countdownController.pause();
                                         if (code.length == 6) {

                                         }
                                        },
                                      ),

                                      ),
                                    ),

                                    SizedBox(
                                      height: 25.h,
                                    ),
                                    Countdown(
                                    controller: controller.countdownController,
                                      seconds: 60,
                                      interval: const Duration(milliseconds: 1000),
                                      build: (context, currentRemainingTime) {
                                        if (currentRemainingTime == 0.0) {
                                          return const Text(
                                            "Resend OTP in",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xff9A99A0)),
                                          );
                                        } else {
                                          return

                                            Container(
                                            alignment: Alignment.center,
                                            child: Text(
                                                "Wait -${currentRemainingTime.toString().length == 4 ? " ${currentRemainingTime.toString().substring(0, 2)}" : " ${currentRemainingTime.toString().substring(0, 1)}"}",
                                                style: const TextStyle(fontSize: 16)),
                                          );
                                        }
                                      },
                                    ),


                                    // Text(
                                    //   AppStrings().OtpSecText,
                                    // ),
                                    SizedBox(
                                      height: 10.h,
                                    ),

                                    SizedBox(
                                      height: 60.h,
                                      width: 312.w,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text(AppStrings().Button,
                                            style: AppStyle().Submittextstyle),
                                        style: BUTTON().buttonStyle,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    GestureDetector(
                                      onTap: () {


                                      },
                                      child: Text(
                                        AppStrings().RecendCode,style: AppStyle().Resendbutton,
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
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
