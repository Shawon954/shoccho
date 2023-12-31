
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:timer_count_down/timer_controller.dart';


class VERIFYCONTROLLER extends GetxController {
  CountdownController countdownController = CountdownController();
  TextEditingController otpEditingController = TextEditingController();
  var messageOtpCode = ''.obs;
  @override
  void onInit() async {
    super.onInit();
    print(await SmsAutoFill().getAppSignature);

    await SmsAutoFill().listenForCode();
  }

  @override
  void onReady() {
    super.onReady();
    countdownController.start();
  }

  @override
  void onClose() {
    super.onClose();
    otpEditingController.dispose();
    SmsAutoFill().unregisterListener();
  }
}