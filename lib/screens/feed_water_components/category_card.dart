
import 'package:abc/additional_screens/valid/color_constants.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatefulWidget {
  final double height;
  final double width;
  final Widget? child;
  final Color color;

  CategoryCard({super.key, required this.height, required this.width, this.child, required this.color});

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0), color: ColorConstants.lightGrey, border: Border.all(color: ColorConstants.grey, width: 2)),

      height: widget.height,
      width: widget.width,
      child: widget.child,
    );
  }
}
