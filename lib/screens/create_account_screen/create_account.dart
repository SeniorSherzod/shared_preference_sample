import 'package:cars_api_task/screens/login_screen/login_screen.dart';
import 'package:cars_api_task/screens/pageview_screen/page_view.dart';
import 'package:cars_api_task/utils/colors/app_colors.dart';
import 'package:cars_api_task/utils/extensions/extensions.dart';
import 'package:cars_api_task/utils/images/app_images.dart';
import 'package:cars_api_task/utils/styles/app_text_style.dart';
import 'package:cars_api_task/widgets/global_button.dart';
import 'package:cars_api_task/widgets/universal_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../data/local/storage_repository.dart';
import '../pageview_screen/widgets/active_circle.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});



  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  int activeIndex = 3;

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text("Create an account",style: AppTextStyle.GilroyBold.copyWith(color: AppColors.white,fontSize: 24),),),
      body: Padding(
        padding: EdgeInsets.only(top: 70.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UniversalTextFormField(
              controller: usernameController,
              hintText: "Full name",
              onChanged: (value){
              },
                onSubmit: (v){
                  StorageRepository.setString(key:"text", value: v);

                },
              errorText: "",
              type: TextInputType.name,
                isVisible: true,
            labelText: "Full name",),
            32.getH(),
            UniversalTextFormField(
              controller: emailController,
              hintText: "Email",
              onChanged: (value){},
              onSubmit: (v){

              },
              errorText: "",
              type: TextInputType.emailAddress,
              isVisible: true,
              labelText: "Email",),
            32.getH(),
            UniversalTextFormField(
              controller: passwordController,
              hintText: "Password",
              onChanged: (value){},
              onSubmit: (v){
              StorageRepository.setString(key:"text", value: v);
              },
              errorText: "",
              type: TextInputType.emailAddress,
              isVisible: true,
              labelText: "Password",),
            32.getH(),
            GlobalButton(
              onTap: () {},
              title: "Validate",
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
                      return LoginScreen();
                    },
                  ),
                );
              },
              child: Text(
                "Already have an  accoiunt ? Login",
                style:
                AppTextStyle.GilroyRegular.copyWith(color: AppColors.yellow),
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
                      height:index== activeIndex ? 10 :7,
                      width :index== activeIndex ? 10 :7 ,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: index == activeIndex
                              ? AppColors.white
                              : AppColors.white.withOpacity(0.5)
                      ),
                    )
                )
              ],
            ),
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
