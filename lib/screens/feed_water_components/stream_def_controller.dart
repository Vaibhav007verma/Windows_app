import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class StreamController extends GetxController {
  TextEditingController first_Stream_Controller = TextEditingController();
  TextEditingController second_Stream_Controller = TextEditingController();
  TextEditingController third_Stream_Controller = TextEditingController();
  TextEditingController fourth_Stream_Controller = TextEditingController();

  @override
  void onClose() {
    first_Stream_Controller.dispose();
    second_Stream_Controller.dispose();
    third_Stream_Controller.dispose();
    fourth_Stream_Controller.dispose();
    super.onClose();
  }
}
