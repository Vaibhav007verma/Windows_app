import 'package:abc/additional_screens/valid/app_text_styles.dart';
import 'package:abc/additional_screens/valid/color_constants.dart';
import 'package:abc/screens/components/item_card.dart';
import 'package:abc/screens/first_screen_controller.dart';
import 'package:abc/screens/modelAndList/item_category_List.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'appStyles/custom_button.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  late FirstScreenController controller;

  @override
  void initState() {
    super.initState();
    controller = Get.put(FirstScreenController()); // Registers the controller
  }

  @override
  Widget build(BuildContext context) {

    // final controller = Get.find<FirstScreenController>();


    final size = MediaQuery.of(context).size;
    final isDesktop = size.width >= 1200;
    final isTablet = size.width >= 900 && size.width < 1200;
    final double scaleFactor = isDesktop ? 1.2 : isTablet ? 1.0 : 0.8;






    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Align(child: Padding(padding: EdgeInsets.only(left: 10.0,bottom: 12), child: Text("UF Additional Settings", style: AppTextStyles.small10Bold.copyWith(fontSize: 18*scaleFactor)  )),alignment: Alignment.topLeft,),
            SizedBox(height: 0,),
            Row(
              children: [
                Expanded(
                    flex: 10,child: Container(
                        color: Colors.white,
                        child:  LayoutBuilder(
                          builder: (context, constraints) {
                            double containerWidth = constraints.maxWidth;
                            double cardWidth = (containerWidth / 2) ;

                            return Wrap(
                              alignment: WrapAlignment.start,
                              direction: Axis.horizontal,
                              spacing: 0.0,
                              runSpacing: 0.0,
                              children: [

                                Column(
                                  children: [
                                    SizedBox(width: cardWidth, child: ItemCard(headerText:"Pressure",isFooter: true, localList: ItemCategoryList().pressureList, controllersList: controller.pressureControllers,)),
                                    SizedBox(width: cardWidth, child: ItemCard(headerText:"Tank Storage Parameters",isFooter: false, localList: ItemCategoryList().tankStorageList, controllersList: controller.tankSizeControllers,)),
                                    SizedBox(width: cardWidth, child: ItemCard(headerText:"Tank Size Factor",isFooter: false, localList: ItemCategoryList().tankSizeFactorList, controllersList: controller.tankSizeControllers,)),
                                  ],
                                ),
                                Column(
                                  children: [
                                    SizedBox(width: cardWidth, child: ItemCard(headerText:"Power",isFooter: false, localList: ItemCategoryList().powerList, controllersList: controller.powerControllers,)),
                                    SizedBox(width: cardWidth, child: ItemCard(headerText:"Valves",isFooter: false, localList: ItemCategoryList().valvesList, controllersList: controller.valvesControllers,)),
                                  ],
                                ),

                              ],
                            );
                          },

                        )
                    )
                ),
                Expanded(flex: 2,child: Container(color: Colors.green,),),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.all(10.0*scaleFactor),
        child: Container(
          width: MediaQuery.of(context).size.width*0.2*(isDesktop ? 1.4 : isTablet ? 1.4 : 1.4  ),color: Colors.lightBlue.shade50,
          padding: EdgeInsets.all(10.0*scaleFactor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: isDesktop ? 70 : isTablet ? 50 : 50,
                height: isDesktop ? 38 : isTablet ? 34 : 32,
                child: CustomButton(
                  text: "Back",
                  width: isDesktop ? 140 : isTablet ? 120 : 100,
                  height: isDesktop ? 48 : isTablet ? 38 : 38,
                  textStyle: isDesktop
                      ? AppTextStyles.small10Bold.copyWith(color: Colors.white)
                      : isTablet
                      ? AppTextStyles.small10Bold.copyWith(color: Colors.white)
                      : AppTextStyles.small10White,
                  // isLoading: controller.isLoading.value,
                  onPressed: (){},
                  backgroundColor: ColorConstants.primaryColor,
                  borderRadius: isDesktop ? 24 : isTablet ? 22 : 20,
                  isOutlined: false,
                ),
              ),
              SizedBox(
                width: isDesktop ? 70 : isTablet ? 50 : 50,
                height: isDesktop ? 38 : isTablet ? 34 : 32,
                child: CustomButton(
                  text: "Next",
                  width: isDesktop ? 140 : isTablet ? 120 : 100,
                  height: isDesktop ? 48 : isTablet ? 38 : 38,
                  textStyle: isDesktop
                      ? AppTextStyles.small10Bold.copyWith(color: Colors.white)
                      : isTablet
                      ? AppTextStyles.small10Bold.copyWith(color: Colors.white)
                      : AppTextStyles.small10White,
                  // isLoading: controller.isLoading.value,
                  onPressed: (){},
                  backgroundColor: ColorConstants.primaryColor,
                  borderRadius: isDesktop ? 24 : isTablet ? 22 : 20,
                  isOutlined: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
