
import 'package:abc/additional_screens/valid/app_text_styles.dart';
import 'package:abc/additional_screens/valid/color_constants.dart';
import 'package:abc/screens/appStyles/custom_button.dart';
import 'package:abc/screens/feed_water_components/custom_textBox.dart';
import 'package:flutter/material.dart';

class StreamDef extends StatefulWidget {

  StreamDef({super.key});

  @override
  State<StreamDef> createState() => _StreamDefState();
}

class _StreamDefState extends State<StreamDef> {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final isDesktop = size.width >= 1200;
    final isTablet = size.width >= 900 && size.width < 1200;
    final double scaleFactor = isDesktop ? 1.2 : isTablet ? 1.0 : 0.8;

    return Container(color: Colors.lightGreenAccent,
    child: Row(
      children: [
        Expanded(flex:3, child: Container(decoration: BoxDecoration(border: Border(right: BorderSide(width: 1, color: Colors.grey))), child: Padding(padding: EdgeInsets.only(left: 50.0, top: 35.0, bottom: 35.0, right: 15.0), child: Container(color: Colors.red,
          child: Container( color: Colors.green,
            height: 250,
            width: 50,
            child: Column(
              children: [
                Align(alignment: Alignment.topLeft, child: Text("Stream Definition",style: AppTextStyles.small10w600.copyWith(fontSize: 10*(isDesktop ? 1.4 : isTablet ? 1.4 : 1.2)))),





                Align( alignment: Alignment.bottomCenter,
                  child:
                  Container( color: Colors.limeAccent, padding: EdgeInsets.only(top: 5.0),
                    child: Column( mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Stream 1",style: AppTextStyles.small10w600.copyWith(fontSize: 10*(isDesktop ? 1.2 : isTablet ? 1.2 : 1.2))),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 2.0),
                              child: CustomTextBox(
                                height: 20*(isDesktop ? 1.1 : isTablet ? 1.1 : 1.1),
                                width: 55*(isDesktop ? 1.2 : isTablet ? 0.9 : 0.9),
                                fontSize: 10*(isDesktop ? 1.1 : isTablet ? 1.0 : 1.0),
                                hintText: "0.00",
                                padding: 2.0,
                              ),
                            ),
                            Text("%",style: AppTextStyles.small10w600.copyWith(fontSize: 10*(isDesktop ? 1.2 : isTablet ? 1.2 : 1.2))),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Stream 2",style: AppTextStyles.small10w600.copyWith(fontSize: 10*(isDesktop ? 1.2 : isTablet ? 1.2 : 1.2))),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 2.0),
                              child: CustomTextBox(
                                height: 20*(isDesktop ? 1.1 : isTablet ? 1.1 : 1.1),
                                width: 55*(isDesktop ? 1.2 : isTablet ? 0.9 : 0.9),
                                fontSize: 10*(isDesktop ? 1.1 : isTablet ? 1.0 : 1.0),
                                hintText: "0.00",
                                padding: 2.0,
                              ),
                            ),
                            Text("%",style: AppTextStyles.small10w600.copyWith(fontSize: 10*(isDesktop ? 1.2 : isTablet ? 1.2 : 1.2))),
                          ],
                        ),


                        Container(
                          color: Colors.white,
                          height: 20*(isDesktop ? 1.2 : isTablet ? 1.0 : 0.8),
                        ),

                        Container(
                          color: Colors.pink,
                          height: 20*(isDesktop ? 1.4 : isTablet ? 1.6 : 1.7),
                          child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(width: 120*(isDesktop ? 1.8 : isTablet ? 1.3 : 1.1),
                              decoration: BoxDecoration(color:Colors.lightGreenAccent, border: Border(top: BorderSide(color: ColorConstants.primaryColor, width: 2)) ),
                              child: Row( mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("              ",style: AppTextStyles.small10w600.copyWith(fontSize: 10*(isDesktop ? 1.2 : isTablet ? 1.2 : 1.2))),
                                  Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                  child: CustomTextBox(
                                    height: 20*(isDesktop ? 1.1 : isTablet ? 1.1 : 1.1),
                                    width: 55*(isDesktop ? 1.2 : isTablet ? 0.9 : 0.9),
                                    fontSize: 10*(isDesktop ? 1.1 : isTablet ? 1.0 : 1.0),
                                    hintText: "0.00",
                                    padding: 2.0,
                                  ),
                                ),
                                Text("%",style: AppTextStyles.small10w600.copyWith(fontSize: 10*(isDesktop ? 1.2 : isTablet ? 1.2 : 1.2))),

                              ],),
                              ),
                              SizedBox(
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
                              )
                           ],
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ),)),),
        Expanded(flex:5, child: Padding( padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 20.0),
          child: Container(color: Colors.red,
            child:  Container( color: Colors.green,
              height: 250,
              width: 50,
              child: Column(
                children: [
                  Align(alignment: Alignment.topLeft, child: Text("Feed Parameters",style: AppTextStyles.small10w600.copyWith(fontSize: 10*(isDesktop ? 1.4 : isTablet ? 1.4 : 1.2)))),
                  Spacer(),
                  Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height*(isDesktop ? 0.2 : isTablet ? 0.2 : 0.2),
                        width: MediaQuery.of(context).size.width*(isDesktop ? 0.2 : isTablet ? 0.2 : 0.2),
                        color: Colors.blue,
                        child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Water Type",style: AppTextStyles.small10w600.copyWith(fontSize: 10*(isDesktop ? 1.4 : isTablet ? 1.4 : 1.2))),
                            Text("Suggested SubType: \nNTU > 2,TSS . 5,TOC > 2 \n*Suggestions based on user Turbidity and TSS input.The selected Water Sub-Type determines the Design Guidelines to be used.",style: AppTextStyles.small10w600.copyWith(fontSize: 10*(isDesktop ? 1.0 : isTablet ? 0.9 : 0.8))),

                          ],
                        ),
                      ),Spacer(),
                      Container(
                        height: MediaQuery.of(context).size.height*(isDesktop ? 0.2 : isTablet ? 0.2 : 0.2),
                        width: MediaQuery.of(context).size.width*(isDesktop ? 0.2 : isTablet ? 0.2 : 0.2),
                        color: Colors.yellow,
                        child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Water Sub-type",style: AppTextStyles.small10w600.copyWith(fontSize: 10*(isDesktop ? 1.4 : isTablet ? 1.4 : 1.2))),

                          ],
                        ),
                      ),

                    ],
                  )



                ],
              ),
            ),
          ),
        ),),
      ],
    ),
    );


  }
}


/*   Align( alignment: Alignment.bottomCenter,
                    child:
                    Container( color: Colors.limeAccent,
                      height: 60*(isDesktop ? 0.9 : isTablet ? 0.9 : 1.0),
                      width: 180*(isDesktop ? 1.8 : isTablet ? 1.4 : 0.95),
                      child: Column( mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(alignment: Alignment.topLeft, child: Text("Organics (TOC)",style: AppTextStyles.small10w600.copyWith(fontSize: 10*(isDesktop ? 1.2 : isTablet ? 1.2 : 1.2)))),
                          Spacer(),
                          Row(
                            children: [
                              CustomTextBox(
                                height: 20*(isDesktop ? 1.2 : isTablet ? 1.2 : 1.1),
                                width: 55*(isDesktop ? 1.2 : isTablet ? 1.2 : 1.2),
                                fontSize: 10*(isDesktop ? 1.5 : isTablet ? 1.5 : 1.5),
                                hintText: "0.00",
                                padding: 2.0,
                              ),
                              SizedBox(width: 5,),
                              Text("mg/l",style: AppTextStyles.small10w600.copyWith(fontSize: 10*(isDesktop ? 1.2 : isTablet ? 1.2 : 1.2))),

                            ],
                          )
                        ],
                      ),

                      // child: CustomTextBox(
                      //   height: 60*(isDesktop ? 0.75 : isTablet ? 0.8 : 0.7),
                      //   width: 180*(isDesktop ? 1.8 : isTablet ? 1.3 : 0.8),
                      //   fontSize: 10*(isDesktop ? 1.2 : isTablet ? 1.0 : 0.8),
                      //   hintText: "0.00",
                      // ),
                    ),
                  ),*/