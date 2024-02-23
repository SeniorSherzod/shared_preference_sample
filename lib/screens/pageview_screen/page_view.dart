import 'package:cars_api_task/screens/pageview_screen/page_view_models/page_views_model.dart';
import 'package:cars_api_task/screens/pageview_screen/widgets/active_circle.dart';
import 'package:cars_api_task/screens/pageview_screen/widgets/page_view_model.dart';
import 'package:cars_api_task/utils/extensions/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/images/app_images.dart';
import '../../utils/styles/app_text_style.dart';
import '../../widgets/global_button.dart';
import '../connexion/connexion.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  int activeIndex = 0;
  final PageController pageController = PageController();

  List<PageViewsModel> pagesData = [
    PageViewsModel(
      iconPath: AppImages.img_1,
      title: "The best tech market",

    ),
    PageViewsModel(
      iconPath: AppImages.img_2,
      title: "A lot of exclusives",

    ),
    PageViewsModel(
      iconPath: AppImages.img_3,
      title: "Sales all the time",

    ),

  ];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        statusBarColor: AppColors.transparent
      ),
      child: Scaffold(
        body: Expanded(
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: pageController,
                  children: [
                    ...List.generate(
                      pagesData.length,
                          (index) => PageViews(
                        pageViewsModel: pagesData[index],
                        horizontalPadding: index == 2? 2.w : 1.w,
                      ),
                    )
                  ],
                ),
              ),
              BoardingBottomView(
                pagesData: pagesData,
                activeIndex: activeIndex,
                onTap: () {
                },
              ),
              TextButton(onPressed: (){if (activeIndex < pagesData.length - 1) {
                setState(() {
                  activeIndex++;
                });
                pageController.jumpToPage(activeIndex);
              } else {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ConnexionScreen();
                    },
                  ),
                );
              }},
                child: Text("Next",style: AppTextStyle.GilroyRegular.copyWith
                  (color: AppColors.white,fontSize: 20.w),),),
              // GlobalButton(onTap: (){ if (activeIndex < pagesData.length - 1) {
              //   setState(() {
              //     activeIndex++;
              //   });
              //   pageController.jumpToPage(activeIndex);
              // } else {
              //   // Navigator.pushReplacement(
              //   //   context,
              //   //   MaterialPageRoute(
              //   //     builder: (context) {
              //   //       return AuthScreen();
              //   //     },
              //   //   ),
              //   // );
              // }},
              //   pixels: 53,
              //   colors: AppColors.c_E3562A,
              //   title: activeIndex == pagesData.length-1 ? "Let's start":"Next",
              //   horizontalPadding: 22.getW(),),
              // SizedBox(height: 20.getH()),
            ],
          ),
        ),
      ),
    );
  }
}

