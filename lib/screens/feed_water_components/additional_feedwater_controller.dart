import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AdditionalFeedWaterController extends GetxController {
  TextEditingController additional_Controller = TextEditingController();

  @override
  void onClose() {
    additional_Controller.dispose();
    super.onClose();
  }
}
