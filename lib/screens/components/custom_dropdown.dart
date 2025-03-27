
import 'package:abc/additional_screens/valid/color_constants.dart';
import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  double height;
  double width;
  double fontSize;
  String hintText;
  List<String> listItems;

  CustomDropdown({super.key, required this.height, required this.width, required this.listItems, required this.fontSize, required this.hintText});

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    double availableWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          color: ColorConstants.lightBlue,
          borderRadius: BorderRadius.circular(5),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: selectedValue,hint: Text(widget.hintText,style: TextStyle(fontSize: 0.85*widget.fontSize),),
            isExpanded: true, isDense: true,
            icon: Icon(Icons.keyboard_arrow_down_sharp, color: Colors.black,size: 20,),
            dropdownColor: ColorConstants.lightBlue,
            items: widget.listItems.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: SizedBox(  height: widget.height,
                  child: Align(alignment: Alignment.centerLeft,
                    child: Text(
                      value,
                      style: TextStyle(color: Colors.black, fontSize: widget.fontSize),
                    ),
                  ),
                )
              );
            }).toList(),
            onChanged: (newValue) {
              setState(() {
                selectedValue = newValue;
              });
            },
          ),
        ),
      ),
    );
  }
}