
import 'package:abc/additional_screens/valid/app_text_styles.dart';
import 'package:abc/additional_screens/valid/color_constants.dart';
import 'package:abc/main.dart';
import 'package:abc/screens/appStyles/custom_button.dart';
import 'package:abc/screens/components/custom_textBox.dart';
import 'package:abc/screens/feed_water_components/ph_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhCard extends StatefulWidget {

  PhCard({super.key});

  @override
  State<PhCard> createState() => _PhCardState();
}

class _PhCardState extends State<PhCard> {

  late Ph_Controller controller;

  @override
  void initState() {
    super.initState();
    controller = Get.put(Ph_Controller());
  }



  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final isDesktop = size.width >= 1200;
    final isTablet = size.width >= 900 && size.width < 1200;
    final double scaleFactor = isDesktop ? 1.2 : isTablet ? 1.0 : 0.8;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 22.0, horizontal: 15.0),
      child: Container(
        color: Colors.transparent,
        height: 250,
        width: 50,
        child: Column(
          children: [
            Row(
              children: [
                Row( mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  Container( color: Colors.transparent, height: MediaQuery.of(context).size.height*0.06, width: MediaQuery.of(context).size.width*0.15,
                    child: Row(
                      children: [
                        Text("pH@25.0*C",style: AppTextStyles.small10w600.copyWith(fontSize: 10*(isDesktop ? 1.2 : isTablet ? 1.1 : 0.95))),
                        CustomTextBox(
                          height: 20*(isDesktop ? 1.2 : isTablet ? 1.2 : 1.1),
                          width: 55*(isDesktop ? 1.2 : isTablet ? 1.1 : 1.2),
                          fontSize: 10*(isDesktop ? 1.5 : isTablet ? 1.5 : 1.5),
                          hintText: "0.00",
                          padding: 5.0,
                          controller: controller.ph_first_Controller,
                        ),
                      ],
                    ),
                  ),SizedBox(width: MediaQuery.of(context).size.width*(isDesktop ? 0.01 : isTablet ? 0.01 : 0.01),),
                 Container(  color: Colors.transparent, height: MediaQuery.of(context).size.height*0.06,  width: MediaQuery.of(context).size.width*0.15,
                   child: Row( mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Text("pH@25.0*C",style: AppTextStyles.small10w600.copyWith(fontSize: 10*(isDesktop ? 1.2 : isTablet ? 1.1 : 0.95))),
                       CustomTextBox(
                         height: 20*(isDesktop ? 1.2 : isTablet ? 1.2 : 1.1),
                         width: 55*(isDesktop ? 1.2 : isTablet ? 1.1 : 1.2),
                         fontSize: 10*(isDesktop ? 1.5 : isTablet ? 1.5 : 1.5),
                         hintText:"0.00",
                         padding: 5.0,
                         controller: controller.ph_second_Controller,
                       ),
                     ],
                   ),
                 )

                ],),
              ],
            ),




            Spacer(),
            Align( alignment: Alignment.bottomLeft,
              child: SizedBox(
                width: isDesktop ? 100 : isTablet ? 80 : 80,
                height: isDesktop ? 25 : isTablet ? 22 : 20,
                child: CustomButton(
                  text: "Adjust pH",
                  width: isDesktop ? 140 : isTablet ? 120 : 100,
                  height: isDesktop ? 48 : isTablet ? 38 : 38,
                  textStyle: isDesktop
                      ? AppTextStyles.small10Bold.copyWith(color: Colors.white)
                      : isTablet
                      ? AppTextStyles.small9Bold.copyWith(color: Colors.white)
                      : AppTextStyles.small9Bold.copyWith(color: Colors.white),
                  // isLoading: controller.isLoading.value,
                  onPressed: (){},
                  backgroundColor: ColorConstants.primaryColor,
                  borderRadius: isDesktop ? 24 : isTablet ? 22 : 20,
                  isOutlined: false,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
