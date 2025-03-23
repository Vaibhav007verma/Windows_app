// import 'package:abc/additional_screens/color_constants.dart';
import 'package:abc/additional_screens/valid/color_constants.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:pnc_polymex/app/core/theme/color_constants.dart';
// import 'package:pnc_polymex/app/presentation/widgets/app_header/app_header_controller.dart' show AppHeaderController;

class AppHeaderView extends StatelessWidget{
  const AppHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDesktop = size.width >= 1200;
    final isTablet = size.width >= 900 && size.width < 1200;
    final double scaleFactor = isDesktop ? 1.2 : isTablet ? 1.0 : 0.8;

    return Container(
      width: double.infinity,
      height: 60 * scaleFactor,
      padding: EdgeInsets.symmetric(horizontal: 24 * scaleFactor),
      decoration: BoxDecoration(
        color: ColorConstants.whiteColor,
        boxShadow: [
          BoxShadow(
            color: ColorConstants.greyWithOpacity,
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/polymex.png',
            height: 30,
            errorBuilder: (context, error, stackTrace) => Text(
              'POLYMEX',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Text(
            'Project 81224',
            style: TextStyle(
              fontSize: 16 * scaleFactor,
              color: Colors.black87,
            ),
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorConstants.greyWithOpacity,
                ),
                child: Icon(Icons.person, color: ColorConstants.primaryColor),
              ),
              const SizedBox(width: 8),
              const Text(
                'Profile',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 16),
            ],
          ),
        ],
      ),
    );
  }
}
