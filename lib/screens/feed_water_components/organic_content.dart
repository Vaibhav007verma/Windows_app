
import 'package:abc/additional_screens/valid/app_text_styles.dart';
import 'package:abc/screens/feed_water_components/custom_textBox.dart';
import 'package:flutter/material.dart';

class OrganicContent extends StatefulWidget {

  OrganicContent({super.key});

  @override
  State<OrganicContent> createState() => _OrganicContentState();
}

class _OrganicContentState extends State<OrganicContent> {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final isDesktop = size.width >= 1200;
    final isTablet = size.width >= 900 && size.width < 1200;
    final double scaleFactor = isDesktop ? 1.2 : isTablet ? 1.0 : 0.8;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
      child: Container( color: Colors.green,
        height: 250,
        width: 50,
        child: Column(
          children: [
            Align(alignment: Alignment.topLeft, child: Text("Organic Content",style: AppTextStyles.small10w600.copyWith(fontSize: 10*(isDesktop ? 1.4 : isTablet ? 1.4 : 1.2)))),



            Spacer(),
            Align( alignment: Alignment.bottomCenter,
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
            ),
          ],
        ),
      ),
    );
  }
}
