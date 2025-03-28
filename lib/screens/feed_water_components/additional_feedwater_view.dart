
import 'package:abc/additional_screens/valid/app_text_styles.dart';
import 'package:abc/additional_screens/valid/color_constants.dart';
import 'package:abc/additional_screens/valid/responsive_utils.dart';

import 'package:abc/screens/appStyles/custom_button.dart';
import 'package:abc/screens/feed_water_components/additional_feedwater_controller.dart';
import 'package:abc/screens/components/custom_textBox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdditionalFeedWater extends StatefulWidget {

  AdditionalFeedWater({super.key});

  @override
  State<AdditionalFeedWater> createState() => _AdditionalFeedWaterState();
}

class _AdditionalFeedWaterState extends State<AdditionalFeedWater> {

  late AdditionalFeedWaterController controller;

  @override
  void initState() {
    super.initState();
    controller = Get.put(AdditionalFeedWaterController());
  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final isDesktop = size.width >= 1200;
    final isTablet = size.width >= 900 && size.width < 1200;
    // final double scaleFactor = isDesktop ? 1.2 : isTablet ? 1.0 : 0.8;

    final double scaleFactor = ResponsiveUtils.getScaleFactor(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
      child: LayoutBuilder(
        builder: (context,constraints) {
          return Container(
            height: 250,
            width: 50, color: Colors.transparent,
            child: Column( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(height:constraints.maxHeight*0.2, color: Colors.transparent, child: Expanded(child: Align(alignment: Alignment.topLeft, child: FittedBox(fit: BoxFit.scaleDown, child: Text("Additional Feed Water Information",style: AppTextStyles.small10w600.copyWith(fontSize: 14)))))),
              SizedBox(height: constraints.maxHeight*0.1,),
              CustomTextBox(
                height: constraints.maxHeight*0.6,
                width: constraints.maxWidth,
                fontSize: 10 * (isDesktop ? 1.2 : isTablet ? 1.0 : 0.8),
                hintText: "0.00",
                padding: 0.0,
                controller: controller.additional_Controller,
              ),



              ],
            ),
          );
        }
      ),
    );
  }
}
