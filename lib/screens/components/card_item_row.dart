
import 'package:abc/additional_screens/valid/app_text_styles.dart';
import 'package:abc/additional_screens/valid/color_constants.dart';
import 'package:flutter/material.dart';

class CardItemRow extends StatefulWidget {
  List<dynamic> localList;
  bool? isFooter;
  Map<String, TextEditingController> textControllers;
  CardItemRow({super.key,required this.localList,required this.textControllers, this.isFooter});

  @override
  State<CardItemRow> createState() => _CardItemRowState();
}

class _CardItemRowState extends State<CardItemRow> {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final isDesktop = size.width >= 1200;
    final isTablet = size.width >= 900 && size.width < 1200;
    final double scaleFactor = isDesktop ? 1.2 : isTablet ? 1.0 : 0.8;




    return Padding(
      padding: EdgeInsets.only(left: 20.0*scaleFactor),
      child: Table(
        // border: TableBorder.,
        columnWidths: {
          0: FlexColumnWidth(1*scaleFactor),
          1: FlexColumnWidth((widget.isFooter == true ? 0.5 : 1) *scaleFactor),
        },
        children: [
          for(var user in widget.localList) ...{
            TableRow(
              children: [
                tableCell(user.itemName, scaleFactor),
                tableEditableCell(widget.textControllers[user.id],scaleFactor,user.itemValue, user.itemType),
              ],
            ),

          },

        ],
      ),
    );
  }


  Widget tableCell(String text,double scaleFactor) {
    return Container(
        height: 30*scaleFactor,
        alignment: Alignment.centerLeft,
        child: Text(text, textAlign: TextAlign.start, style: AppTextStyles.small10w600,));
  }


  Widget tableEditableCell(TextEditingController? controller, double scaleFactor, String hintText, String itemType) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            height: 24*scaleFactor, width: 36*scaleFactor,
            child: TextField(
              textAlign: TextAlign.center,
              style: AppTextStyles.small10Bold.copyWith(fontSize: 10*scaleFactor),
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: AppTextStyles.small10Bold.copyWith(fontSize: 10*scaleFactor),
                filled: true,
                contentPadding: EdgeInsets.all(3.0),
                fillColor: ColorConstants.secondaryColor,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: ColorConstants.primaryColor, width: 2),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: ColorConstants.primaryColor, width: 2),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
          ),
        ),

        SizedBox(width: 8,),

        tableCell(itemType,scaleFactor),

      ],
    );
  }
}

