
import 'package:abc/additional_screens/valid/app_text_styles.dart';
import 'package:abc/additional_screens/valid/responsive_utils.dart';
import 'package:abc/screens/components/custom_textBox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'organic_content_cntroller.dart';

class OrganicContent extends StatefulWidget {

  OrganicContent({super.key});

  @override
  State<OrganicContent> createState() => _OrganicContentState();
}

class _OrganicContentState extends State<OrganicContent> {

  late OrganicContentCntroller controller;

  @override
  void initState() {
    super.initState();
    controller = Get.put(OrganicContentCntroller());
  }
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final isDesktop = size.width >= 1200;
    final isTablet = size.width >= 900 && size.width < 1200;
    final double scaleFactor = ResponsiveUtils.getScaleFactor(context);

    return Padding(
      padding: const EdgeInsets.only(left: 15.0, top: 10.0, bottom: 10.0, right: 15.0),
      child: LayoutBuilder(
        builder: (context,constraints) {
          return Container( color: Colors.transparent,
            height: 250,
            width: 50,
            child: Column(
              children: [
                // Align(alignment: Alignment.topLeft, child: Text("Organic Content",style: AppTextStyles.small10w600.copyWith(fontSize: 10*(isDesktop ? 1.4 : isTablet ? 1.4 : 1.2)))),
                Expanded(child: Align(alignment: Alignment.topLeft, child: FittedBox(fit: BoxFit.scaleDown, child: Text("Organic Content",style: AppTextStyles.small10w600.copyWith(fontSize: 14))))),



                // Spacer(),
                Align( alignment: Alignment.bottomCenter,
                  child:
                  Container( color: Colors.transparent,
                    height: constraints.maxHeight*0.7/*60*(isDesktop ? 0.9 : isTablet ? 0.9 : 1.0)*/,
                    width: constraints.maxWidth/*180*(isDesktop ? 1.8 : isTablet ? 1.4 : 0.95)*/,
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
                              controller: controller.organic_content_Controller,
                            ),
                            SizedBox(width: 5*scaleFactor,),
                            Text("mg/l",style: AppTextStyles.small10w600.copyWith(fontSize: 10*scaleFactor)),

                          ],
                        ),


                        /*Container( color: Colors.pink, height: constraints.maxHeight*0.5, width:constraints.maxWidth,
                          child: Expanded(
                            child: Row(
                              children: [
                                CustomTextBox(
                                  height: 20*(isDesktop ? 1.2 : isTablet ? 1.0 : 0.8),
                                  width: 55*(isDesktop ? 1.2 : isTablet ? 1.2 : 1.2),
                                  fontSize: 10*scaleFactor,
                                  hintText: "0.00",
                                  padding: 2.0,
                                  controller: controller.organic_content_Controller,
                                  ),
                                SizedBox(width: 5,),
                                Text("mg/l",style: AppTextStyles.small10w600.copyWith(fontSize: 10*scaleFactor)),
                            
                              ],
                            ),
                          ),
                        )*/
                      ],
                    ),
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
