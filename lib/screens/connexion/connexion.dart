import 'package:cars_api_task/utils/colors/app_colors.dart';
import 'package:cars_api_task/utils/extensions/extensions.dart';
import 'package:cars_api_task/utils/images/app_images.dart';
import 'package:cars_api_task/utils/styles/app_text_style.dart';
import 'package:cars_api_task/widgets/global_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../create_account_screen/create_account.dart';
import '../login_screen/login_screen.dart';

class ConnexionScreen extends StatefulWidget {
  const ConnexionScreen({super.key});

  @override
  State<ConnexionScreen> createState() => _ConnexionScreenState();
}

class _ConnexionScreenState extends State<ConnexionScreen> {
  int activeIndex = 3;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Connexion",
          style: AppTextStyle.GilroyBold.copyWith(
              color: AppColors.white, fontSize: 24),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 70.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GlobalButton(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const CreateAccountScreen();
                    },
                  ),
                );
              },
              title: "Create an account",
              horizontalPadding: 16,
              pixels: 53,
              colors: AppColors.white,
              colorText: AppColors.back,
              fontSize: 20,
            ),
            32.getH(),
            GlobalButton(
              onTap: () {},
              icons: SvgPicture.asset(AppImages.google),
              title: "Connect with Google",
              horizontalPadding: 16,
              pixels: 53,
              colors: AppColors.white,
              colorText: AppColors.googleText,
              fontSize: 20,
            ),
            32.getH(),
            GlobalButton(
              onTap: () {},
              icons: SvgPicture.asset(AppImages.facebook),
              title: "Connect with Facebook",
              horizontalPadding: 16,
              pixels: 53,
              colors: AppColors.facebook,
              colorText: AppColors.white,
              fontSize: 20,
            ),
            50.getH(),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
              child: Text(
                "Already have an  accoiunt ? Login",
                style: AppTextStyle.GilroyRegular.copyWith(
                    color: AppColors.yellow),
              ),
            ),
            20.getH(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    4,
                    (index) => Container(
                          margin: const EdgeInsets.all(4),
                          height: index == activeIndex ? 10 : 7,
                          width: index == activeIndex ? 10 : 7,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: index == activeIndex
                                  ? AppColors.white
                                  : AppColors.white.withOpacity(0.5)),
                        ))
              ],
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const CreateAccountScreen();
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
