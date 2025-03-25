import 'package:abc/additional_screens/valid/app_text_styles.dart';
import 'package:abc/additional_screens/valid/color_constants.dart';
import 'package:abc/screens/components/item_card.dart';
import 'package:abc/screens/feed_water_components/Stream_def.dart';
import 'package:abc/screens/feed_water_components/additional_feedwater.dart';
import 'package:abc/screens/feed_water_components/category_card.dart';
import 'package:abc/screens/feed_water_components/organic_content.dart';
import 'package:abc/screens/feed_water_components/ph_card.dart';
import 'package:abc/screens/feed_water_components/solid_content.dart';
import 'package:abc/screens/feed_water_components/temperature_component.dart';
import 'package:abc/screens/feed_water_controller.dart';
import 'package:abc/screens/first_screen_controller.dart';
import 'package:abc/screens/modelAndList/item_category_List.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'appStyles/custom_button.dart';

class FeedWaterPage extends StatefulWidget {
  const FeedWaterPage({super.key});

  @override
  State<FeedWaterPage> createState() => _FeedWaterPageState();
}

class _FeedWaterPageState extends State<FeedWaterPage> {

  late FeedWaterController controller;

  @override
  void initState() {
    super.initState();
    controller = Get.put(FeedWaterController()); // Registers the controller
  }

  @override
  Widget build(BuildContext context) {


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
            Align(child: Padding(padding: EdgeInsets.only(left: 10.0,bottom: 12), child: Text("Feed Water - Stream 1", style: AppTextStyles.small10Bold.copyWith(fontSize: 18*scaleFactor)  )),alignment: Alignment.topLeft,),
            SizedBox(height: 0,),


            Container( color: Colors.blue,
              height: MediaQuery.of(context).size.height*(isDesktop ? 0.76 : isTablet ? 0.76 : 0.76), width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  // Stream Definations and Feed Params
                  Padding(
                            padding: const EdgeInsets.only(right: 60.0, left: 10.0),
                            child: CategoryCard(child: StreamDef(), color: Colors.lightGreenAccent,height: MediaQuery.of(context).size.height*(isDesktop ? 0.3 : isTablet ? 0.3 : 0.3), width: MediaQuery.of(context).size.width),
                  ),




                  Padding(
                    padding: const EdgeInsets.only(right: 60.0, left: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Solid Content
                        CategoryCard(child: SolidContent(), color: Colors.red,height: MediaQuery.of(context).size.height*(isDesktop ? 0.41 : isTablet ? 0.41 : 0.41), width: MediaQuery.of(context).size.width*(isDesktop ? 0.23 : isTablet ? 0.23 : 0.23),),
                              Spacer(),
                              Container(color: Colors.limeAccent,height: MediaQuery.of(context).size.height*(isDesktop ? 0.41 : isTablet ? 0.41 : 0.41), width: MediaQuery.of(context).size.width*(isDesktop ? 0.635 : isTablet ? 0.635 : 0.635),
                                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                  children: [

                                    Container(color: Colors.amber,height: MediaQuery.of(context).size.height*(isDesktop ? 0.4 : isTablet ? 0.4 : 0.4), width: MediaQuery.of(context).size.width*(isDesktop ? 0.24 : isTablet ? 0.24 : 0.24),
                                        child:  Column( mainAxisAlignment: MainAxisAlignment.start, children: [
                                          // Organic Content
                                          CategoryCard(child: OrganicContent(), color: Colors.white,height: MediaQuery.of(context).size.height*(isDesktop ? 0.17 : isTablet ? 0.17 : 0.17), width: MediaQuery.of(context).size.width*(isDesktop ? 0.355 : isTablet ? 0.355 : 0.355),),
                                          Spacer(),
                                          // Additional Feed Water Information
                                          CategoryCard(child: AdditionalFeedWater(), color: Colors.grey,height: MediaQuery.of(context).size.height*(isDesktop ? 0.19 : isTablet ? 0.19 : 0.19), width: MediaQuery.of(context).size.width*(isDesktop ? 0.355 : isTablet ? 0.355 : 0.355),),

                                        ],),
                                    ),
                                    Spacer(),
                                    Container(color: Colors.green,height: MediaQuery.of(context).size.height*(isDesktop ? 0.4 : isTablet ? 0.4 : 0.4), width: MediaQuery.of(context).size.width*(isDesktop ? 0.355 : isTablet ? 0.355 : 0.355),
                                        child: Column( mainAxisAlignment: MainAxisAlignment.start, children: [
                                          // Temperature
                                          CategoryCard(child: TemperatureContent(),color: Colors.white,height: MediaQuery.of(context).size.height*(isDesktop ? 0.17 : isTablet ? 0.17 : 0.17), width: MediaQuery.of(context).size.width*(isDesktop ? 0.355 : isTablet ? 0.355 : 0.355),),
                                          Spacer(),
                                          // Last card
                                          CategoryCard(child: PhCard(), color: Colors.red,height: MediaQuery.of(context).size.height*(isDesktop ? 0.19 : isTablet ? 0.19 : 0.19), width: MediaQuery.of(context).size.width*(isDesktop ? 0.355 : isTablet ? 0.355 : 0.355),),

                                          ],),
                                    ),
                                  ],),
                              ),


                      ],
                    ),
                  ),
                ],


              ),
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



