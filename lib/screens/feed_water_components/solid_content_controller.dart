import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SolidContentController extends GetxController {
  TextEditingController first_solid_Controller = TextEditingController();
  TextEditingController second_solid_Controller = TextEditingController();
  TextEditingController third_solid_Controller = TextEditingController();

  @override
  void onClose() {
    first_solid_Controller.dispose();
    second_solid_Controller.dispose();
    third_solid_Controller.dispose();
    super.onClose();
  }
}
