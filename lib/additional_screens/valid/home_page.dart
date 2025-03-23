import 'package:abc/screens/first_screen.dart';
import 'package:flutter/material.dart';

import 'app_header_view.dart';
// import 'app_text_styles.dart';
// import 'navigation_sidebar_view.dart';
// import 'package:get/get.dart';
// import 'package:pnc_polymex/app/core/theme/app_text_styles.dart';
// import 'package:pnc_polymex/app/core/theme/color_constants.dart';
// import 'package:pnc_polymex/app/presentation/pages/home/home_controller.dart';
// import 'package:pnc_polymex/app/presentation/pages/navigation_sidebar/navigation_sidebar_view.dart';
// import 'package:pnc_polymex/app/presentation/pages/system_configuration/system_configuration_view.dart';
// import 'package:pnc_polymex/app/presentation/widgets/app_header/app_header_view.dart';
// import 'package:pnc_polymex/app/presentation/widgets/custom_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final HomeController controller = Get.find();
    final size = MediaQuery.of(context).size;
    final isDesktop = size.width >= 1200;
    final isTablet = size.width >= 900 && size.width < 1200;
    final double scaleFactor = isDesktop ? 1.2 : isTablet ? 1.0 : 0.8;



    return Scaffold(
      body: Column(
        children: [
          // AppHeaderView(),
          SizedBox(height: 2,),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // NavigationSidebarView(),

                   /* Expanded(
                      child: Container(
                        color: Colors.lime,
                        width: constraints.maxWidth,
                        child: AnimatedSlide(
                            duration: const Duration(milliseconds: 700),
                            offset: const Offset(0, 0),
                            child: SystemConfigurationView()),
                      ),
                    ),*/
                    FirstScreen()
                  ],
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: /*Obx(
            () =>*/ Padding(
          padding: EdgeInsets.only(
            right: isDesktop ? 48 : isTablet ? 40 : 32,
            bottom: isDesktop ? 32 : isTablet ? 28 : 24,
          ),
          child: Container(
            color: Colors.pink,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: isDesktop
                      ? 130
                      : isTablet
                      ? 100
                      : 80,
                  height: isDesktop
                      ? 48
                      : isTablet
                      ? 40
                      : 30,
                  child: Center(
                    child: Text("Next"),/*CustomButton(
                    text: "Next",
                    textStyle:
                    isDesktop
                        ? AppTextStyles.small12.copyWith(color: Colors.white)
                        : isTablet
                        ? AppTextStyles.small12.copyWith(color: Colors.white)
                        : AppTextStyles.small10White,
                    isLoading: controller.isLoading.value,
                    onPressed: controller.isLoading.value ? null : controller.next,
                    backgroundColor: ColorConstants.primaryColor,
                    borderRadius: isDesktop ? 24 : isTablet ? 22 : 20,
                  ),*/
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
