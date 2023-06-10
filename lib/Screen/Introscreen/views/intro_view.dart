import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:shoccho/AppColors/appcolors.dart';
import 'package:shoccho/Route/app_route.dart';


import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class INTROVIEW extends StatefulWidget {
  @override
  State<INTROVIEW> createState() => _INTROVIEWState();
}

class _INTROVIEWState extends State<INTROVIEW> {
  var size, height, width;

  PageController _pageController = PageController();

  bool endpage = false;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Container(
              height:height,
              width: width,
              decoration: BoxDecoration(
                color: Colors.black45,
              ),
            ),
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                opacity: .6,
                image: AssetImage(
                  'assets/introimage/back.png',
                ),
              )),
            ),
            Positioned(
              bottom: 20.r,
              left: 18.r,
              child: Center(
                child: Container(
                  height: 410.h,
                  width: 352.w,
                  decoration: BoxDecoration(
                      color: AppColors.Splash_color,
                      borderRadius: BorderRadius.all(Radius.circular(32.r))),
                  child: Stack(
                    children: [
                      Positioned(
                        child: Center(
                          child: Column(
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(top: 10.r),
                                child: Container(
                                  height: 10.h,
                                  width: 90.w,
                                  decoration: BoxDecoration(
                                      color: Color(0xffD9E1EA),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.r))),
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              SvgPicture.asset(
                                'assets/logo/shoccho_logo.svg',
                                height: 35.h,
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Container(
                                height: 280.h,
                                width: 300.w,
                                color: Colors.orange,
                                child: PageView(
                                  controller: _pageController,
                                  onPageChanged: (value) {
                                    setState(() {
                                      endpage = (value == 2);
                                    });
                                  },
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'Main Title 1st',
                                          style: TextStyle(
                                              fontSize: 20.sp,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'Sub Title',
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'Main Title 2nd',
                                          style: TextStyle(
                                              fontSize: 20.sp,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Text(
                                          'Sub Title',
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'Main Title 3rd',
                                          style: TextStyle(
                                              fontSize: 20.sp,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Text(
                                          'Sub Title',
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  GestureDetector(
                                      onTap: () {
                                        _pageController.jumpToPage(2);
                                        _pageController.nextPage(
                                            duration:
                                                Duration(milliseconds: 500),
                                            curve: Curves.easeIn);




                                      },
                                      child: Text(
                                        'Skip',
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500),
                                      )),
                                  SmoothPageIndicator(
                                    controller: _pageController,
                                    count: 3,
                                    effect: const WormEffect(
                                      dotHeight: 8,
                                      dotWidth: 8,
                                      type: WormType.thinUnderground,
                                    ),
                                  ),
                                  endpage
                                      ? GestureDetector(
                                          child: Text(
                                            'Done',
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          onTap: () {
                                            _pageController.nextPage(
                                                duration:
                                                    Duration(milliseconds: 500),
                                                curve: Curves.easeIn);

                                             Get.offAndToNamed(AppPage.LOGIN);



                                          },
                                        )
                                      : GestureDetector(
                                          child: Text(
                                            'Next',
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          onTap: () {
                                            _pageController.nextPage(
                                                duration:
                                                    Duration(milliseconds: 500),
                                                curve: Curves.easeIn);
                                          },
                                        ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    ));
  }
}
