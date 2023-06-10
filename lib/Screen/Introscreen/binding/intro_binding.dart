import 'package:get/get.dart';
import 'package:shoccho/Screen/Introscreen/controllers/intro_controllers.dart';


class INTROBINDING extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<INTROCONTOLLER>(() => INTROCONTOLLER());
  }

}