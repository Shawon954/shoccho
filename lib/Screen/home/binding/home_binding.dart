
import 'package:get/get.dart';

import 'package:shoccho/Screen/home/controllers/home_contoller.dart';

class HOMEBINDING extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HOMECONTOLLER>(() => HOMECONTOLLER());
  }

}