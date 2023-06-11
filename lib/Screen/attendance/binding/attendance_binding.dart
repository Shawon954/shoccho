
import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:shoccho/Screen/attendance/controller/attendance_controller.dart';


class ATTENBINDING extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut<ATTENCONTROLLER>(() => ATTENCONTROLLER());
  }

}