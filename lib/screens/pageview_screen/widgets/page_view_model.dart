import 'package:cars_api_task/utils/extensions/extensions.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors/app_colors.dart';
import '../../../utils/styles/app_text_style.dart';
import '../page_view_models/page_views_model.dart';

class PageViews extends StatelessWidget {
  const PageViews({super.key, required this.pageViewsModel, required this.horizontalPadding});

  final PageViewsModel pageViewsModel;
  final double horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(pageViewsModel.iconPath),
          SizedBox(height: 40.h),
          Text(
            pageViewsModel.title,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: AppTextStyle.GilroyBold.copyWith(
              fontSize: 24,
              color: AppColors.white,
            ),
          ),

        ],
      ),
    );
  }
}