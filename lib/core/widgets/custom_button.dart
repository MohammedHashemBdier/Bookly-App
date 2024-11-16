import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.textColor,
    required this.onPressed,
    required this.data,
    required this.backgroundColor,
    this.borderRadius,
  });
  final Color textColor;
  final String data;
  final Color backgroundColor;
  final Function() onPressed;
  final BorderRadiusGeometry? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        child: Text(
          data,
          style: AppStyles.textStyle18.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
