
import 'package:abc/additional_screens/valid/app_text_styles.dart';
import 'package:abc/additional_screens/valid/responsive_utils.dart';
import 'package:abc/screens/components/custom_textBox.dart';
import 'package:abc/screens/feed_water_components/solid_content_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SolidContent extends StatefulWidget {

  SolidContent({super.key});

  @override
  State<SolidContent> createState() => _SolidContentState();
}

class _SolidContentState extends State<SolidContent> {
  late SolidContentController controller;

  @override
  void initState() {
    super.initState();
    controller = Get.put(SolidContentController());
  }
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final isDesktop = size.width >= 1200;
    final isTablet = size.width >= 900 && size.width < 1200;

    final double scaleFactor = ResponsiveUtils.getScaleFactor(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container( color: Colors.transparent,
            height: constraints.maxHeight*0.2,
            // width: constraints.maxWidth*0.2,
            child: Column(
              children: [
               Expanded(child: Align(alignment: Alignment.topLeft, child: FittedBox(fit: BoxFit.scaleDown, child: Text("Solid Content",style: AppTextStyles.small10w600.copyWith(fontSize: 14*scaleFactor))))),


                // SizedBox(  height: 0*scaleFactor,),
                Container(
                  color: Colors.transparent, height: constraints.maxHeight*0.9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Container( color: Colors.transparent,
                       height: constraints.maxHeight*0.25/*50*(isDesktop ? 1.0 : isTablet ? 0.85 : 0.7)*/,
                       width: constraints.maxWidth,
                       child: Column( mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Align(alignment: Alignment.topLeft, child: Text("Organics (TOC)",style: AppTextStyles.small10w600.copyWith(fontSize: 10*scaleFactor))),
                           Spacer(),
                           Row(
                             children: [
                               CustomTextBox(
                                 height: 20*(isDesktop ? 1.2 : isTablet ? 1.2 : 1.1),
                                 width: 55*(isDesktop ? 1.2 : isTablet ? 1.2 : 1.2),
                                 fontSize: 10*scaleFactor,
                                 hintText: "0.00",
                                 padding: 2.0,
                                 controller: controller.first_solid_Controller,
                               ),
                               SizedBox(width: 5*scaleFactor,),
                               Text("mg/l",style: AppTextStyles.small10w600.copyWith(fontSize: 10*scaleFactor)),

                             ],
                           )
                         ],
                       ),

                     ),
                     SizedBox(  height: constraints.maxHeight*0.05,),
                     Container( color: Colors.transparent,
                       height:  constraints.maxHeight*0.25,
                       width:  constraints.maxWidth,
                       child: Column( mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Align(alignment: Alignment.topLeft, child: Text("Organics (TOC)",style: AppTextStyles.small10w600.copyWith(fontSize: 10*scaleFactor))),
                           Spacer(),
                           Row(
                             children: [
                               CustomTextBox(
                                 height: 20*(isDesktop ? 1.2 : isTablet ? 1.2 : 1.1),
                                 width: 55*(isDesktop ? 1.2 : isTablet ? 1.2 : 1.2),
                                 fontSize: 10*(scaleFactor),
                                 hintText: "0.00",
                                 padding: 2.0,
                                 controller: controller.second_solid_Controller,
                               ),
                               SizedBox(width: 5*scaleFactor,),
                               Text("mg/l",style: AppTextStyles.small10w600.copyWith(fontSize: 10*(scaleFactor))),

                             ],
                           )
                         ],
                       ),


                     ),
                     SizedBox(  height: constraints.maxHeight*0.05,),
                     Container( color: Colors.transparent,
                       height:  constraints.maxHeight*0.25,
                       width:  constraints.maxWidth,
                       child: Column( mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Align(alignment: Alignment.topLeft, child: Text("Organics (TOC)",style: AppTextStyles.small10w600.copyWith(fontSize: 10*scaleFactor))),
                           Spacer(),
                           Row(
                             children: [
                               CustomTextBox(
                                 height: 20*(isDesktop ? 1.2 : isTablet ? 1.2 : 1.1),
                                 width: 55*(isDesktop ? 1.2 : isTablet ? 1.2 : 1.2),
                                 fontSize: 10*scaleFactor,
                                 hintText: "0.00",
                                 padding: 2.0,
                                 controller: controller.third_solid_Controller,
                               ),
                               SizedBox(width: 5*scaleFactor,),
                               Text("mg/l",style: AppTextStyles.small10w600.copyWith(fontSize: 10*scaleFactor)),

                             ],
                           )
                         ],
                       ),


                     ),
                   ],
                  ),
                )



              ],
            ),
          );
        }
      ),
    );
  }
}
