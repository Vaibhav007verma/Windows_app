import 'package:abc/additional_screens/valid/app_text_styles.dart';
import 'package:abc/additional_screens/valid/color_constants.dart';
import 'package:flutter/material.dart';

class CustomTextBox extends StatefulWidget {
  double height;
  double width;
  String hintText;
  double fontSize;
  double padding;
  CustomTextBox({super.key, required this.height, required this.width, required this.hintText, required this.fontSize, required this.padding});

  @override
  State<CustomTextBox> createState() => _CustomTextBoxState();
}

class _CustomTextBoxState extends State<CustomTextBox> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(widget.padding),
      child: Center(
        child: Container(
          height: widget.height,
          width: widget.width,
          child: TextField(
            textAlign: TextAlign.center,
            style: AppTextStyles.small10Bold.copyWith(fontSize: widget.fontSize ),
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: AppTextStyles.small10Bold.copyWith(fontSize: widget.fontSize ),
              filled: true,
              contentPadding: EdgeInsets.all(3.0),
              fillColor: ColorConstants.secondaryColor,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorConstants.primaryColor, width: 2),
                borderRadius: BorderRadius.circular(15.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorConstants.primaryColor, width: 2),
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
