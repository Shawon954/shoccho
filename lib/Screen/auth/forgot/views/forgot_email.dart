import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:shoccho/AppString/appstring.dart';
import 'package:shoccho/AppStyle/appstyle.dart';
import 'package:shoccho/Button/custom_button.dart';
import 'package:shoccho/Route/app_route.dart';

class FORGOREMAIL extends StatefulWidget {
  const FORGOREMAIL({super.key});

  @override
  State<FORGOREMAIL> createState() => _FORGOREMAILState();
}

class _FORGOREMAILState extends State<FORGOREMAIL> {

  var size, height, width;

  final _formKey = GlobalKey<FormState>();

  bool pass = true;

  submithundel() {
    _formKey.currentState!.validate();
    _formKey.currentState!.save();
  }

  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();

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
                            height: 330.h,
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
                                      AppStrings().ForgotText,
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
                                      AppStrings().Forgotpagetext,
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff9A99A0),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Form(
                                      key: _formKey,
                                      child: Column(
                                        children: [
                                          Padding(
                                              padding:  EdgeInsets.only(
                                                  left: 12,right:12),
                                              child: TextFormField(
                                                controller: _emailcontroller,
                                                keyboardType:
                                                TextInputType.emailAddress,
                                                validator: (value) {
                                                  if (value!.isEmpty) {
                                                    return 'Enter your email';
                                                  } else if (value.isEmail) {
                                                    return '';
                                                  }
                                                  return null;
                                                },
                                                decoration: InputDecoration(
                                                  filled: true,
                                                  fillColor: Color(0xffeeecec),

                                                  hintText: 'Email Address',
                                                  prefixIcon: Icon(
                                                    Icons.email_outlined,
                                                    color: Color(0xffBB83FF),
                                                  ),
                                                  border: InputBorder.none,
                                                  enabledBorder: OutlineInputBorder(
                                                      borderSide: BorderSide.none,
                                                      borderRadius: BorderRadius.all(Radius.circular(30))
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                      borderSide: BorderSide.none,
                                                      borderRadius: BorderRadius.all(Radius.circular(30))
                                                  ),

                                                  hintStyle: TextStyle(
                                                    fontSize: 15.sp,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: 'Gilroy',
                                                    color: Color(0xff38383c),
                                                  ),
                                                ),
                                              )),
                                          SizedBox(
                                            height: 15.h,
                                          ),

                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30.h,
                                    ),
                                    SizedBox(
                                      height: 60.h,
                                      width: 312.w,
                                      child: ElevatedButton(
                                        onPressed: (){
                                          Get.toNamed(AppPage.FORNEWPASS);
                                        },
                                        child: Text(AppStrings().Button,style:AppStyle().Submittextstyle),style: BUTTON().buttonStyle,),
                                    ),


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
