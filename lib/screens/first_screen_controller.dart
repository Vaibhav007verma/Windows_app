import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstScreenController extends GetxController {
  // Define controllers
  var maximumController = TextEditingController();
  var filterateController = TextEditingController();
  var filtrationController = TextEditingController();
  var strainerController = TextEditingController();
  var backWashController = TextEditingController();
  var cIPController = TextEditingController();

  var chemicalController = TextEditingController();
  var backwashController = TextEditingController();

  var bWFiltrateController = TextEditingController();
  var bWOnlyController = TextEditingController();
  var cIPTankController = TextEditingController();

  var pLCPowerController = TextEditingController();
  var valvePowerController = TextEditingController();

  var valvesPerController = TextEditingController();
  var valvesOpenController = TextEditingController();

  // Maps for easy access
  Map<String, TextEditingController> pressureControllers = {};
  Map<String, TextEditingController> tankStorageControllers = {};
  Map<String, TextEditingController> tankSizeControllers = {};
  Map<String, TextEditingController> powerControllers = {};
  Map<String, TextEditingController> valvesControllers = {};

  @override
  void onInit() {
    super.onInit();

    // Initialize controller maps
    pressureControllers = {
      "1": maximumController,
      "2": filterateController,
      "3": filtrationController,
      "4": strainerController,
      "5": backWashController,
      "6": cIPController,
    };

    tankStorageControllers = {
      "1": chemicalController,
      "2": backwashController,
    };

    tankSizeControllers = {
      "1": bWFiltrateController,
      "2": bWOnlyController,
      "3": cIPTankController,
    };

    powerControllers = {
      "1": pLCPowerController,
      "2": valvePowerController,
    };

    valvesControllers = {
      "1": valvesPerController,
      "2": valvesOpenController,
    };
  }

  // Update method
  void updateText() {
    update();
  }
}
