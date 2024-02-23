import 'package:cars_api_task/utils/extensions/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/colors/app_colors.dart';
import '../utils/styles/app_text_style.dart';

class UniversalTextFormField extends StatelessWidget {
  const UniversalTextFormField({
    super.key,
    required this.hintText,
    required this.onChanged,
    required this.onSubmit,
    this.keyboardType,
    this.prefix,
    required this.errorText,
    required this.type,
    required this.labelText,
    required this.isVisible,
    required this.controller
  });


  final String hintText;
  final TextInputType? keyboardType;
  final Function(String value)onChanged;
  final Function(String v) onSubmit;
  final SvgPicture? prefix;
  final String errorText;
  final TextInputType type;
  final String labelText;
  final bool? isVisible;
final TextEditingController controller ;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(labelText,style: AppTextStyle.GilroyMedium.copyWith(color: AppColors.white),),
              8.getH(),
              TextFormField(
                controller: controller,
                keyboardType: keyboardType,
                onChanged: onChanged,
                obscureText: !isVisible!,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  fillColor: AppColors.transparent,
                  filled: true,
                  hintText: hintText,
                  hintStyle: AppTextStyle.GilroyMedium.copyWith(color: AppColors.white),
                  suffix: prefix,
                  helperStyle: AppTextStyle.GilroyRegular.copyWith
                    (color: AppColors.c_1A72DD, fontSize: 12),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 1,
                        color: AppColors.white
                    ),
                    borderRadius: BorderRadius.zero,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1,
                        color: AppColors.white
                    ),
                    borderRadius: BorderRadius.zero,
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1,
                      color: AppColors.white,
                    ),
                    borderRadius: BorderRadius.zero,
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1,
                      color: AppColors.white,
                    ),
                    borderRadius: BorderRadius.zero,
                  ),
                ),
              ),
            ],
          )
        )

      ],
    );
  }


}