
import 'package:abc/additional_screens/valid/app_text_styles.dart';
import 'package:abc/additional_screens/valid/color_constants.dart';
import 'package:abc/screens/appStyles/custom_button.dart';
import 'package:abc/screens/components/custom_dropdown.dart';
import 'package:abc/screens/components/custom_textBox.dart';
import 'package:abc/screens/feed_water_components/stream_def_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StreamDef extends StatefulWidget {

  StreamDef({super.key});

  @override
  State<StreamDef> createState() => _StreamDefState();
}

class _StreamDefState extends State<StreamDef> {

  late StreamController controller;

  @override
  void initState() {
    super.initState();
    controller = Get.put(StreamController());
  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final isDesktop = size.width >= 1200;
    final isTablet = size.width >= 900 && size.width < 1200;
    final double scaleFactor = isDesktop ? 1.2 : isTablet ? 1.0 : 0.8;

    // final scaleFactor = ResponsiveUtils.getScaleFactor(context);
    // final isDesktop = ResponsiveUtils.isDesktop(context);
    // final isTablet = ResponsiveUtils.isTablet(context);

    return Container(
      decoration:BoxDecoration(border: Border.all(color: Colors.transparent, width: 2)),
    child: Row(
      children: [
        Expanded(flex:3, child: Container(decoration: BoxDecoration(border: Border(right: BorderSide(width: 1, color: Colors.grey.shade300))), child: Padding(padding: EdgeInsets.only(left: 50.0, top: 25.0, bottom: 25.0, right: 15.0), child: Container(color: Colors.transparent,
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Container(
                height: 250,
                width: 50,
                child: Column(
                  children: [
                    // Align(alignment: Alignment.topLeft, child: Text("Stream Definition",style: AppTextStyles.small10w600.copyWith(fontSize: 10*(isDesktop ? 1.4 : isTablet ? 1.4 : 1.2)))),
                    Expanded(child: Align(alignment: Alignment.topLeft, child: FittedBox(fit: BoxFit.scaleDown, child: Text("Stream Definition",style: AppTextStyles.small10w600.copyWith(fontSize: 14*scaleFactor))))),


                    Container( color: Colors.transparent, height:constraints.maxHeight*0.85,
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container( color: Colors.transparent, height: constraints.maxHeight*0.6,
                            padding: EdgeInsets.only(top: 5.0),
                            child: Column( mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container( color: Colors.transparent, height: constraints.maxHeight*0.18,
                                  child: Row(
                                    children: [
                                      Text("Stream 1",style: AppTextStyles.small10w600.copyWith(fontSize: 12*scaleFactor)),SizedBox(width: 5*scaleFactor,),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                        child: CustomTextBox(
                                            height: 20*(isDesktop ? 1.1 : isTablet ? 1.1 : 1.1),
                                            width: 55*(isDesktop ? 1.2 : isTablet ? 0.9 : 0.9),
                                          fontSize: 10*(isDesktop ? 1.1 : isTablet ? 1.0 : 1.0),
                                          hintText: "0.00",
                                          padding: 2.0,
                                          controller: controller.first_Stream_Controller
                                        ),
                                      ),SizedBox(width: 3*scaleFactor,),
                                      Text("%",style: AppTextStyles.small10w600.copyWith(fontSize: 10*scaleFactor)),SizedBox(width: 3*scaleFactor,),
                                      ElevatedButton(onPressed: () {},style: ElevatedButton.styleFrom(shape: CircleBorder(),padding: EdgeInsets.all(12*scaleFactor),minimumSize: Size(30, 20),backgroundColor: Colors.red),child: Icon(Icons.close, size: 9*scaleFactor, color: Colors.white),)
                                    ],
                                  ),
                                ),
                                Container( color: Colors.transparent, height: constraints.maxHeight*0.18,
                                  child: Row(
                                    children: [
                                      Text("Stream 2",style: AppTextStyles.small10w600.copyWith(fontSize: 12*scaleFactor)),SizedBox(width: 5*scaleFactor,),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                        child: CustomTextBox(
                                            height: 20*(isDesktop ? 1.1 : isTablet ? 1.1 : 1.1),
                                            width: 55*(isDesktop ? 1.2 : isTablet ? 0.9 : 0.9),
                                            fontSize: 10*(isDesktop ? 1.1 : isTablet ? 1.0 : 1.0),
                                            hintText: "0.00",
                                            padding: 2.0,
                                            controller: controller.first_Stream_Controller
                                        ),
                                      ),SizedBox(width: 3*scaleFactor,),
                                      Text("%",style: AppTextStyles.small10w600.copyWith(fontSize: 10*scaleFactor)),SizedBox(width: 3*scaleFactor,),
                                      ElevatedButton(onPressed: () {},style: ElevatedButton.styleFrom(shape: CircleBorder(),padding: EdgeInsets.all(12*scaleFactor),minimumSize: Size(30, 20),backgroundColor: Colors.red),child: Icon(Icons.close, size: 9*scaleFactor, color: Colors.white),)
                                    ],
                                  ),
                                ),
                                Container( color: Colors.transparent, height: constraints.maxHeight*0.18,
                                  child: Row(
                                    children: [
                                      Text("Stream 3",style: AppTextStyles.small10w600.copyWith(fontSize: 12*scaleFactor)),SizedBox(width: 5*scaleFactor,),

                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                        child: CustomTextBox(
                                            height: 20*(isDesktop ? 1.1 : isTablet ? 1.1 : 1.1),
                                            width: 55*(isDesktop ? 1.2 : isTablet ? 0.9 : 0.9),
                                            fontSize: 10*(isDesktop ? 1.1 : isTablet ? 1.0 : 1.0),
                                            hintText: "0.00",
                                            padding: 2.0,
                                            controller: controller.first_Stream_Controller
                                        ),
                                      ),SizedBox(width: 3*scaleFactor,),
                                      Text("%",style: AppTextStyles.small10w600.copyWith(fontSize: 10*scaleFactor)),SizedBox(width: 3*scaleFactor,),
                                      ElevatedButton(onPressed: () {},style: ElevatedButton.styleFrom(shape: CircleBorder(),padding: EdgeInsets.all(12*scaleFactor),minimumSize: Size(30, 20),backgroundColor: Colors.red),child: Icon(Icons.close, size: 9*scaleFactor, color: Colors.white),)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            color: Colors.transparent,
                            height: constraints.maxHeight*0.2,
                            child: Row( crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 120*(isDesktop ? 1.8 : isTablet ? 1.3 : 1.1),
                                    decoration: BoxDecoration(color:Colors.transparent, border: Border(top: BorderSide(color: ColorConstants.primaryColor, width: 1)) ),
                                    child: Row( mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text("",style: AppTextStyles.small10w600.copyWith(fontSize: 10*scaleFactor)),

                                        SizedBox(width: 55*scaleFactor),

                                        Padding(
                                          padding: const EdgeInsets.only(right: 5.0,top:3),
                                          child: CustomTextBox(
                                            height: 20*(isDesktop ? 1.1 : isTablet ? 1.1 : 1.1),
                                            width: 55*(isDesktop ? 1.2 : isTablet ? 0.9 : 0.9),
                                            fontSize: 10*(isDesktop ? 1.1 : isTablet ? 1.0 : 1.0),
                                            hintText: "0.00",
                                            padding: 2.0,
                                            controller: controller.fourth_Stream_Controller,
                                          ),
                                        ),SizedBox(width: 3*scaleFactor,),
                                        Text("%",style: AppTextStyles.small10w600.copyWith(fontSize: 10*(isDesktop ? 1.2 : isTablet ? 1.2 : 1.2))),
                                      ],),),
                                ),
                                Container(
                                  width: isDesktop ? 100 : isTablet ? 80 : 80,
                                  height: isDesktop ? 25 : isTablet ? 22 : 20,
                                  child: CustomButton(
                                    text: "+ Add Stream",
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


                  ],
                ),
              );
            }
          )
        ),)),),
        Expanded(flex:5, child: Padding( padding: EdgeInsets.only(left: 60.0,right: 60.0, top: 10.0, bottom: 20.0),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Container(color: Colors.transparent,
                child:  Container( color: Colors.transparent,
                  height: 250,
                  width: 50,
                  child: Column(
                    children: [
                      // Align(alignment: Alignment.topLeft, child: Text("Feed Parameters",style: AppTextStyles.small10w600.copyWith(fontSize: 10*(isDesktop ? 1.4 : isTablet ? 1.4 : 1.2)))),
                      Expanded(child: Align(alignment: Alignment.topLeft, child: FittedBox(fit: BoxFit.scaleDown, child: Text("Feed Parameters",style: AppTextStyles.small10w600.copyWith(fontSize: 14*scaleFactor  ))))),


                      Container( color: Colors.transparent, height: constraints.maxHeight*0.85,
                        child: Row(
                          children: [
                            Container(
                              height: constraints.maxHeight*0.75,
                              width: constraints.maxWidth*0.5,
                              color: Colors.transparent,
                              child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Water Type",style: AppTextStyles.small10w600.copyWith(fontSize: 10*scaleFactor)),
                                  CustomDropdown(
                                    height: constraints.maxHeight*0.15,
                                    width: constraints.maxWidth*0.45,
                                    listItems: ['Item 1', 'Item 2', 'Item 3', 'Item 4'],
                                    fontSize: 10*(isDesktop ? 1.5 : isTablet ? 1.4 : 1.2),
                                    hintText: "Water Type",
                                  ),
                                  Expanded( child: Text("Suggested SubType: \nNTU > 2,TSS . 5,TOC > 2 \n*Suggestions based on user Turbidity and TSS input.The selected Water Sub-Type determines the Design Guidelines to be used.",style: AppTextStyles.small10w600.copyWith(fontSize: 7*scaleFactor))),
                                ],
                              ),
                            ),Spacer(),
                            Container(
                              height: constraints.maxHeight*0.75,
                              width: constraints.maxWidth*0.45,
                              color: Colors.transparent,
                              child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Water Sub-type",style: AppTextStyles.small10w600.copyWith(fontSize: 10*scaleFactor)),

                                  CustomDropdown(
                                    height: constraints.maxHeight*0.15,
                                    width: constraints.maxWidth*0.45,
                                    listItems: ['Item 1', 'Item 2', 'Item 3', 'Item 4'],
                                    fontSize: 10*(isDesktop ? 1.5 : isTablet ? 1.4 : 1.2),
                                    hintText: "NTU≤2,TSS≤5",
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
              );
            }
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