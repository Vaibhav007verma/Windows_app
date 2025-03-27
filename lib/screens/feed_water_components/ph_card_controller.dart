import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Ph_Controller extends GetxController {
  TextEditingController ph_first_Controller = TextEditingController();
  TextEditingController ph_second_Controller = TextEditingController();

  @override
  void onClose() {
    ph_first_Controller.dispose();
    ph_second_Controller.dispose();
    super.onClose();
  }
}
