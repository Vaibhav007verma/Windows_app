import 'package:abc/additional_screens/valid/app_text_styles.dart';
import 'package:abc/screens/components/custom_textBox.dart';
import 'package:abc/screens/feed_water_components/temperature_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TemperatureContent extends StatefulWidget {

  TemperatureContent({super.key});

  @override
  State<TemperatureContent> createState() => _TemperatureContentState();
}

class _TemperatureContentState extends State<TemperatureContent> {
  late TemperatureController controller;

  @override
  void initState() {
    super.initState();
    controller = Get.put(TemperatureController());
  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final isDesktop = size.width >= 1200;
    final isTablet = size.width >= 900 && size.width < 1200;
    final double scaleFactor = isDesktop ? 1.2 : isTablet ? 1.0 : 0.8;

    return Padding(
      padding: const EdgeInsets.only(left: 15.0, top: 10.0, bottom: 8.0, right: 15.0),
      child: LayoutBuilder(
        builder: (context,constraints) {
          return Container( color: Colors.transparent,
            // height: 250,
            // width: 50,
            child: Column( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Align(alignment: Alignment.topLeft, child: Text("Temperature",style: AppTextStyles.small10w600.copyWith(fontSize: 10*(isDesktop ? 1.4 : isTablet ? 1.4 : 1.2)))),
                Expanded(child: Align(alignment: Alignment.topLeft, child: FittedBox(fit: BoxFit.scaleDown, child: Text("Temperature",style: AppTextStyles.small10w600.copyWith(fontSize: 13*scaleFactor))))),


                // Spacer(),
                Container( color: Colors.transparent,
                  height: constraints.maxHeight*0.75/*60*(isDesktop ? 0.9 : isTablet ? 0.9 : 1.0)*/,
                  width: constraints.maxWidth/*180*(isDesktop ? 2.3 : isTablet ? 1.8 : 1.4)*/,
                  child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Container( color: Colors.transparent,
                            height: constraints.maxHeight*0.7/*60*(isDesktop ? 0.9 : isTablet ? 0.9 : 1.0)*/,
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text("40.0",style: AppTextStyles.small10w600.copyWith(fontSize: 16*scaleFactor)),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 2.0),
                                      child: Text("*C",style: AppTextStyles.small10w600.copyWith(fontSize: 10*scaleFactor)),
                                    ),
                                  ],
                                ),Spacer(),
                                Text("Minimum",style: AppTextStyles.small10w600.copyWith(fontSize: 9*scaleFactor)),
                              ],),
                          ),
                          Expanded(
                            child: Container( color: Colors.transparent,
                              height: constraints.maxHeight*0.7,
                              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Row( mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     CustomTextBox(
                                       height: 25*scaleFactor,
                                       width: 55*scaleFactor,
                                       fontSize: 14*scaleFactor,
                                       hintText: "0.00",
                                       padding: 2.0,
                                       controller: controller.temperature_Controller,
                                     ), SizedBox(width: 5*scaleFactor,),
                                     Text("*C",style: AppTextStyles.small10w600.copyWith(fontSize: 10*scaleFactor)),

                                   ],
                                 ),Spacer(),
                                 Text("Design",style: AppTextStyles.small10w600.copyWith(fontSize: 9*scaleFactor)),

                               ],
                                                     ),
                            ),
                          ),
                          Container( color: Colors.transparent,
                            height: constraints.maxHeight*0.7,
                            child: Column( mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Row(
                                 children: [
                                   Text("40.0",style: AppTextStyles.small10w600.copyWith(fontSize: 16*scaleFactor)),
                                   Padding(
                                     padding: const EdgeInsets.only(left: 2.0),
                                     child: Text("*C",style: AppTextStyles.small10w600.copyWith(fontSize: 10*scaleFactor)),
                                   ),
                                 ],
                               ),Spacer(),
                               Text("Maximum",style: AppTextStyles.small10w600.copyWith(fontSize: 9*scaleFactor)),
                             ],),
                          ),
                        ],
                      )
                    ],
                  ),


                ),
              ],
            ),
          );
        }
      ),
    );
  }
}
