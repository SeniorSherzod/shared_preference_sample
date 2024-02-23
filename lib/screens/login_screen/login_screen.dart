import 'package:cars_api_task/data/local/storage_repository.dart';
import 'package:cars_api_task/screens/categories/categories.dart';
import 'package:cars_api_task/screens/create_account_screen/create_account.dart';
import 'package:cars_api_task/utils/colors/app_colors.dart';
import 'package:cars_api_task/utils/extensions/extensions.dart';
import 'package:cars_api_task/widgets/universal_textfield.dart';
import 'package:flutter/material.dart';

import '../../utils/styles/app_text_style.dart';
import '../../widgets/global_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int activeIndex=4;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(centerTitle: true,title: Text("Login",style: AppTextStyle.GilroyBold.copyWith(color: AppColors.white,fontSize: 24),),),
      body: Padding(
        padding: EdgeInsets.only(top: 70.h),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UniversalTextFormField(
                controller: emailController,
                hintText: "Email",
                errorText: "",
                type: TextInputType.emailAddress,
                labelText: "Email",),
              32.getH(),
              UniversalTextFormField(
                controller: passwordController,
                hintText: "Password",
                errorText: "",
                type: TextInputType.emailAddress,
                labelText: "Password",),
              32.getH(),
              GlobalButton(
                onTap: () {
                  if(formKey.currentState!.validate())
                 {
                  if(StorageRepository.getString(key: "email")== emailController){
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const CategoriesScreen();
                        },
                      ),
                    );
                  }
                 }
                  else{
                  }
                },
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
                        return const CreateAccountScreen();
                      },
                    ),
                  );
                },
                child: Text(
                  "Don't have an  accoiunt ? Sign up",
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
                        return const CategoriesScreen();
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
      ),
    );
  }
}
