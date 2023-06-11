import 'package:get/get.dart';
import 'package:shoccho/NavigationBar/navigationbar.dart';
import 'package:shoccho/Screen/Introscreen/binding/intro_binding.dart';
import 'package:shoccho/Screen/Introscreen/views/intro_view.dart';
import 'package:shoccho/Screen/attendance/binding/attendance_binding.dart';
import 'package:shoccho/Screen/attendance/views/attendance_view.dart';
import 'package:shoccho/Screen/auth/forgot/forgotemail/binding/forgot_binding.dart';
import 'package:shoccho/Screen/auth/forgot/forgotemail/views/forgot_email.dart';
import 'package:shoccho/Screen/auth/forgot/forgotnewpass/binding/newpassbainding.dart';
import 'package:shoccho/Screen/auth/forgot/forgotnewpass/view/forgotnewpass.dart';
import 'package:shoccho/Screen/auth/forgot/forgotverify/bainding/verifybainding.dart';
import 'package:shoccho/Screen/auth/forgot/forgotverify/view/verifycode.dart';
import 'package:shoccho/Screen/auth/login/binding/login_binding.dart';
import 'package:shoccho/Screen/auth/login/views/login_views.dart';
import 'package:shoccho/Screen/home/binding/home_binding.dart';
import 'package:shoccho/Screen/home/views/home_view.dart';
import 'package:shoccho/Screen/profile/binding/profile_binding.dart';
import 'package:shoccho/Screen/profile/views/profile_view.dart';
import 'package:shoccho/Screen/splash/binding/splash_binding.dart';
import 'package:shoccho/Screen/splash/views/splash_view.dart';

class AppPage {
  static const INITIAL = SPLASH;

  static const SPLASH = '/splash';

  static const INTRO = '/intro';
  static const LOGIN = '/login';

  // FORGOT PASSWORD //
  static const FOREMAIL = '/forgotemail';
  static const FORNEWPASS = '/forgotnewpass';
  static const FORVERIFY = '/forgotverify';

  // FORGOT PASSWORD //

  static const NAVBAR = '/navbar';

  // HOMEPAGE //
  static const HOMEPAGE = '/home';

  // HOMEPAGE //

  // ATTENDANCE //
  static const ATTENPAGE = '/attend';

  // ATTENDANCE//

  // PROFILE //
  static const PROFILEPAGE = '/profile';

  // PROFILE//

  static final routes = [
    GetPage(
      name: SPLASH,
      page: () => SPLASHVIEW(),
      binding: SPLASHBINDING(),
    ),
    GetPage(
      name: INTRO,
      page: () => INTROVIEW(),
      binding: INTROBINDING(),
    ),
    GetPage(name: LOGIN, page: () => LOGINVIEW(), binding: LOGINBINDING()),

    //Forgot Password //
    GetPage(
      name: FOREMAIL,
      page: () => FORGOREMAIL(),
      binding: FORGOTEMAILBINDING(),
    ),
    GetPage(
      name: FORNEWPASS,
      page: () => FORGOTNEWPASSWORD(),
      binding: NEWPASSBAINDING(),
    ),
    GetPage(
      name: FORVERIFY,
      page: () => FOEGOTVERIFICATION(),
      binding: VERIFYBAINDING(),
    ),
    //Forgot Password //

    // NAVBAR//
    GetPage(
      name: NAVBAR,
      page: () => NAVIGATIONBAR(),
    ),

    //HOME PAGE //
    GetPage(name: HOMEPAGE, page: () => HOMEVIEW(), binding: HOMEBINDING()),
    //HOME PAGE //

    //ATTENDANCE//
    GetPage(name: ATTENPAGE, page: () => ATTENVIEW(), binding: ATTENBINDING()),
    //ATTENDANCE//

    //PROFILE//
    GetPage(
        name: PROFILEPAGE,
        page: () => PROFILEVIEW(),
        binding: PROFILEBINDING()),
    // PROFILE//
  ];
}
