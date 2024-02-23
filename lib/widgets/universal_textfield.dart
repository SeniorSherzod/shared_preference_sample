import 'package:cars_api_task/utils/extensions/extensions.dart';
import 'package:flutter/material.dart';

import '../utils/colors/app_colors.dart';
import '../utils/styles/app_text_style.dart';

class UniversalTextFormField extends StatelessWidget {
  const UniversalTextFormField({
    super.key,
    required this.hintText,
    this.keyboardType,
    required this.errorText,
    required this.type,
    required this.labelText,
    required this.controller,
  });

  final String hintText;
  final TextInputType? keyboardType;
  final String errorText;
  final TextInputType type;
  final String labelText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  labelText,
                  style: AppTextStyle.GilroyMedium.copyWith(
                    color: AppColors.white,
                  ),
                ),
                8.getH(),
                TextFormField(
                  controller: controller,
                  keyboardType: keyboardType,
                  validator: (String? value) {
                    print(value);
                    if (value == null || value.isEmpty) {
                      return errorText;
                    } else {
                      return null;
                    }
                  },
                  style: const TextStyle(
                    color: AppColors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    fillColor: AppColors.transparent,
                    filled: true,
                    hintText: hintText,
                    hintStyle: AppTextStyle.GilroyMedium.copyWith(
                        color: AppColors.white),
                    helperStyle: AppTextStyle.GilroyRegular.copyWith(
                        color: AppColors.white, fontSize: 12),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: AppColors.white),
                      borderRadius: BorderRadius.zero,
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: AppColors.white),
                      borderRadius: BorderRadius.zero,
                    ),
                    disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: AppColors.white,
                      ),
                      borderRadius: BorderRadius.zero,
                    ),
                    errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: AppColors.white,
                      ),
                      borderRadius: BorderRadius.zero,
                    ),
                    focusedErrorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: AppColors.white,
                      ),
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
