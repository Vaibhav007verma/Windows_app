import 'package:abc/additional_screens/valid/app_text_styles.dart';
import 'package:abc/additional_screens/valid/color_constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final double width;
  final double height;
  final double borderRadius;
  final Widget? prefixIcon;
  final bool isOutlined;  // Added this

  const CustomButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.isLoading = false,
    this.backgroundColor,
    this.textStyle,
    this.width = 150,
    this.height = 45,
    this.borderRadius = 8,
    this.prefixIcon,
    this.isOutlined = false,  // Added this
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonColor = backgroundColor ?? Theme.of(context).primaryColor;

    return SizedBox(
      width: width,
      height: height,
      child: isOutlined
          ? OutlinedButton(
        onPressed: isLoading ? null : onPressed,
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: buttonColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        ),
        child: _buildButtonChild(buttonColor),
      )
          : ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        ),
        child: _buildButtonChild(ColorConstants.whiteColor),
      ),
    );
  }

  Widget _buildButtonChild(Color textColor) {
    return isLoading
        ? Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 18,
          height: 18,
          child: CircularProgressIndicator(
            color: textColor,
            strokeWidth: 2,
          ),
        ),
        const SizedBox(width: 8),
        Flexible(
          child: Text(
            "Loading...",
            style: textStyle?.copyWith(color: textColor) ??
                AppTextStyles.small10BoldWhite.copyWith(color: textColor),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    )
        : Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (prefixIcon != null) ...[
          prefixIcon!,
          const SizedBox(width: 4),
        ],
        Flexible(
          child: Text(
            text,
            style: textStyle?.copyWith(color: textColor) ??
                TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}