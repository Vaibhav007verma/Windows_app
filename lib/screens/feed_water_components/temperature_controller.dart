import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TemperatureController extends GetxController {
  TextEditingController temperature_Controller = TextEditingController();

  @override
  void onClose() {
    temperature_Controller.dispose();
    super.onClose();
  }
}
