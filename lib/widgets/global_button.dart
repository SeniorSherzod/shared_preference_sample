import 'package:cars_api_task/utils/images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/colors/app_colors.dart';
import '../utils/extensions/extensions.dart';
import '../utils/styles/app_text_style.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({
    super.key,
    required this.onTap,
    required this.title,
    required this.horizontalPadding,
    this.colors,
    required this.pixels,
    this.colorText,
    this.fontSize,
    this.icons,
  });

  final VoidCallback onTap;
  final String title;
  final double horizontalPadding;
  final Color? colors;
  final double pixels;
  final Color? colorText;
  final double? fontSize;
  final Widget? icons;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      width: width,
      height: pixels,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 13),
          backgroundColor: colors,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           SizedBox(
             width:25.w,height:25.h,child: icons,),
            10.getW(),
            Text(title,
                style: AppTextStyle.GilroyBold.copyWith(
                    fontSize: fontSize, color: colorText)),
          ],
        ),
      ),
    );
  }
}
