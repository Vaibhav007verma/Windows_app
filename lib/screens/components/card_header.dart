
import 'package:abc/additional_screens/valid/app_text_styles.dart';
import 'package:flutter/material.dart';

class CardHeader extends StatefulWidget {
  String name;
  CardHeader({super.key,required this.name});

  @override
  State<CardHeader> createState() => _CardHeaderState();
}

class _CardHeaderState extends State<CardHeader> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDesktop = size.width >= 1200;
    final isTablet = size.width >= 900 && size.width < 1200;
    final double scaleFactor = isDesktop ? 1.2 : isTablet ? 1.0 : 0.8;
    return Padding(padding: EdgeInsets.only(left: 18*scaleFactor,right: 20*scaleFactor, top: 14*scaleFactor, bottom: 5*scaleFactor),
      child: Align(alignment:Alignment.centerLeft, child: Text(widget.name,style: AppTextStyles.small10Bold.copyWith(fontSize: 12*scaleFactor, fontWeight: FontWeight.w900),)),);
  }
}
