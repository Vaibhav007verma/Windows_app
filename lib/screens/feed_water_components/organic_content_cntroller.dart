import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OrganicContentCntroller extends GetxController {
  TextEditingController organic_content_Controller = TextEditingController();

  @override
  void onClose() {
    organic_content_Controller.dispose();
    super.onClose();
  }
}
