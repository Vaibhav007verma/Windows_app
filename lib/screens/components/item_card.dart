import 'package:abc/additional_screens/valid/color_constants.dart';
import 'package:abc/screens/components/card_footer.dart';
import 'package:abc/screens/components/card_header.dart';
import 'package:abc/screens/components/card_item_row.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatefulWidget {
  List<dynamic> localList;
  String headerText;
  bool? isFooter;
  Map<String, TextEditingController> controllersList;
  ItemCard({super.key, required this.headerText, required this.isFooter, required this.localList, required this.controllersList});

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {





  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

  final size = MediaQuery.of(context).size;
  final isDesktop = size.width >= 1200;
  final isTablet = size.width >= 900 && size.width < 1200;
  final double scaleFactor = isDesktop ? 1.2 : isTablet ? 1.0 : 0.8;



    return Padding(padding: EdgeInsets.all(10.0),
      child: Container(
        width:300 * scaleFactor, decoration: BoxDecoration(color: ColorConstants.lightGrey,border: Border.all(color: Colors.black12,width: 2),borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          children: [
            CardHeader(name: widget.headerText,),
            CardItemRow(localList: widget.localList, textControllers: widget.controllersList,isFooter: widget.isFooter,),

            if(widget.isFooter == true) CardFooter(name: "Pressure drops are based on user inputs. Default values should not be used for pump sizing",),
            SizedBox(height: 5,)
          ],
        ),
        ),
    );
  }



}
