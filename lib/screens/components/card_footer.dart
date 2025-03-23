import 'package:abc/additional_screens/valid/app_text_styles.dart';
import 'package:abc/additional_screens/valid/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';









class CardFooter extends StatefulWidget {
  String name;
  CardFooter({super.key,required this.name});

  @override
  State<CardFooter> createState() => _CardFooterState();
}

class _CardFooterState extends State<CardFooter> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDesktop = size.width >= 1200;
    final isTablet = size.width >= 900 && size.width < 1200;
    final double scaleFactor = isDesktop ? 1.2 : isTablet ? 1.0 : 0.8;
    return Padding(padding: EdgeInsets.only(left: 20*scaleFactor,right: 50*scaleFactor, top: 10*scaleFactor, bottom: 5*scaleFactor),
      child: Align(alignment:Alignment.centerLeft, child: Text(widget.name,style: AppTextStyles.small10w600.copyWith(fontSize: 10*scaleFactor))),);
  }
}



