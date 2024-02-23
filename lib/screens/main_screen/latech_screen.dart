import 'package:cars_api_task/screens/pageview_screen/page_view.dart';
import 'package:cars_api_task/utils/colors/app_colors.dart';
import 'package:cars_api_task/utils/extensions/extensions.dart';
import 'package:cars_api_task/utils/images/app_images.dart';
import 'package:cars_api_task/utils/styles/app_text_style.dart';
import 'package:cars_api_task/widgets/global_button.dart';
import 'package:flutter/material.dart';

import '../connexion/connexion.dart';

class LatechScreen extends StatefulWidget {
  const LatechScreen({super.key});

  @override
  State<LatechScreen> createState() => _LatechScreenState();
}

class _LatechScreenState extends State<LatechScreen> {
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 70.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "LATECH",
              style: AppTextStyle.GilroyBold.copyWith(
                  color: AppColors.white, fontSize: 42.w),
            ),
            Text(
              "TECH MARKET",
              style: AppTextStyle.GilroyBold.copyWith(
                  color: AppColors.white, fontSize: 12.w),
            ),
            Image.asset(
              AppImages.img,
            ),
            GlobalButton(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return PageViewScreen();
                    },
                  ),
                );
              },
              title: "Let's Start",
              horizontalPadding: 16,
              pixels: 53,
              colors: AppColors.white,
              colorText: AppColors.back,
              fontSize: 20,
            ),
            50.getH(),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ConnexionScreen();
                    },
                  ),
                );
              },
              child: Text(
                "Skip for now",
                style:
                    AppTextStyle.GilroyRegular.copyWith(color: AppColors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
