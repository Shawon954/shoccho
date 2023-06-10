import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shoccho/Route/app_route.dart';
import 'package:shoccho/Screen/splash/views/splash_view.dart';


void main() async{

   WidgetsFlutterBinding.ensureInitialized();
   SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,designSize: Size(390, 844));
    return GetMaterialApp(
      title: 'Shoccho',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),

      ),
      home: SPLASHVIEW(),
      initialRoute: AppPage.INITIAL,
      getPages: AppPage.routes,
    );
  }
}
