
import 'package:abc/additional_screens/valid/app_text_styles.dart';
import 'package:abc/additional_screens/valid/color_constants.dart';

import 'package:abc/screens/appStyles/custom_button.dart';
import 'package:abc/screens/feed_water_components/custom_textBox.dart';
import 'package:flutter/material.dart';

class AdditionalFeedWater extends StatefulWidget {

  AdditionalFeedWater({super.key});

  @override
  State<AdditionalFeedWater> createState() => _AdditionalFeedWaterState();
}

class _AdditionalFeedWaterState extends State<AdditionalFeedWater> {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final isDesktop = size.width >= 1200;
    final isTablet = size.width >= 900 && size.width < 1200;
    final double scaleFactor = isDesktop ? 1.2 : isTablet ? 1.0 : 0.8;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 22.0, horizontal: 15.0),
      child: Container(
        height: 250,
        width: 50, color: Colors.lime,
        child: Column(
          children: [
            Text("Additional Feed Water Information",style: AppTextStyles.small10w600.copyWith(fontSize: 10*(isDesktop ? 1.4 : isTablet ? 1.1 : 1.0))),



            Spacer(),
            Align( alignment: Alignment.bottomCenter,
              child:
              CustomTextBox(
                height: 60*(isDesktop ? 0.75 : isTablet ? 0.8 : 0.6),
                width: 180*(isDesktop ? 1.8 : isTablet ? 1.3 : 0.8),
                fontSize: 10*(isDesktop ? 1.2 : isTablet ? 1.0 : 0.8),
                hintText: "0.00",
                padding: 8.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
