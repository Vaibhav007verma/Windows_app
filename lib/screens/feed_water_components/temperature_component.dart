
import 'package:abc/additional_screens/valid/app_text_styles.dart';
import 'package:abc/screens/feed_water_components/custom_textBox.dart';
import 'package:flutter/material.dart';

class TemperatureContent extends StatefulWidget {

  TemperatureContent({super.key});

  @override
  State<TemperatureContent> createState() => _TemperatureContentState();
}

class _TemperatureContentState extends State<TemperatureContent> {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final isDesktop = size.width >= 1200;
    final isTablet = size.width >= 900 && size.width < 1200;
    final double scaleFactor = isDesktop ? 1.2 : isTablet ? 1.0 : 0.8;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
      child: Container( color: Colors.lightBlueAccent,
        // height: 250,
        // width: 50,
        child: Column( mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(alignment: Alignment.topLeft, child: Text("Temperature",style: AppTextStyles.small10w600.copyWith(fontSize: 10*(isDesktop ? 1.4 : isTablet ? 1.4 : 1.2)))),


            // Spacer(),
            Container( color: Colors.limeAccent,
              height: 60*(isDesktop ? 0.9 : isTablet ? 0.9 : 1.0),
              width: 180*(isDesktop ? 2.3 : isTablet ? 1.8 : 1.4),
              child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Container( color: Colors.transparent,
                        height: 60*(isDesktop ? 0.9 : isTablet ? 0.9 : 1.0),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text("40.0",style: AppTextStyles.small10w600.copyWith(fontSize: 10*(isDesktop ? 2.1 : isTablet ? 1.8 : 1.8))),
                                Padding(
                                  padding: const EdgeInsets.only(left: 2.0),
                                  child: Text("*C",style: AppTextStyles.small10w600.copyWith(fontSize: 10*(isDesktop ? 1.2 : isTablet ? 1.2 : 1.2))),
                                ),
                              ],
                            ),Spacer(),
                            Text("Minimum",style: AppTextStyles.small10w600.copyWith(fontSize: 10*(isDesktop ? 1.2 : isTablet ? 1.2 : 1.2))),
                          ],),
                      ),
                      Expanded(
                        child: Container( color: Colors.red,
                          height: 60*(isDesktop ? 0.9 : isTablet ? 0.9 : 1.0),
                          child: Column(mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Row( mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 CustomTextBox(
                                   height: 20*(isDesktop ? 1.5 : isTablet ? 1.5 : 1.2),
                                   width: 55*(isDesktop ? 1.2 : isTablet ? 1.2 : 1.2),
                                   fontSize: 10*(isDesktop ? 1.8 : isTablet ? 1.8 : 1.8),
                                   hintText: "0.00",
                                   padding: 2.0,
                                 ), SizedBox(width: 5,),
                                 Text("*C",style: AppTextStyles.small10w600.copyWith(fontSize: 10*(isDesktop ? 1.2 : isTablet ? 1.2 : 1.2))),

                               ],
                             ),Spacer(),
                             Text("Design",style: AppTextStyles.small10w600.copyWith(fontSize: 10*(isDesktop ? 1.2 : isTablet ? 1.2 : 1.2))),

                           ],
                                                 ),
                        ),
                      ),
                      Container( color: Colors.red,
                        height: 60*(isDesktop ? 0.9 : isTablet ? 0.9 : 1.0),
                        child: Column( mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Row(
                             children: [
                               Text("40.0",style: AppTextStyles.small10w600.copyWith(fontSize: 10*(isDesktop ? 2.1 : isTablet ? 1.8 : 1.8))),
                               Padding(
                                 padding: const EdgeInsets.only(left: 2.0),
                                 child: Text("*C",style: AppTextStyles.small10w600.copyWith(fontSize: 10*(isDesktop ? 1.2 : isTablet ? 1.2 : 1.2))),
                               ),
                             ],
                           ),Spacer(),
                           Text("Maximum",style: AppTextStyles.small10w600.copyWith(fontSize: 10*(isDesktop ? 1.2 : isTablet ? 1.1 : 0.95))),
                         ],),
                      ),
                    ],
                  )
                ],
              ),


            ),
          ],
        ),
      ),
    );
  }
}
