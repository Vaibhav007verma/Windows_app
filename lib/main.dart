import 'dart:io';

import 'package:abc/screens/feed_water_view.dart';
import 'package:abc/screens/first_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:window_manager/window_manager.dart';

Future<void> main() async {
  // Get.put(FirstScreenController());
  // runApp(const MyApp());
  // class ResponsiveUtils {Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await windowManager.ensureInitialized();

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
  windowManager.setMinimumSize(const Size(900, 600)); // Min size fix kiya
  windowManager.setMaximumSize(const Size(1920, 1080)); // Max size fix kiya
  }

  // DependencyInjection.init(); // Dependency Injection ko initialize kiya

  runApp(MyApp());
  // }

  }

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FeedWaterPage(),
    );
  }
}
