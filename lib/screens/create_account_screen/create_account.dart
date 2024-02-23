import 'package:cars_api_task/data/local/storage_repository.dart';
import 'package:cars_api_task/utils/colors/app_colors.dart';
import 'package:cars_api_task/utils/extensions/extensions.dart';
import 'package:cars_api_task/utils/styles/app_text_style.dart';
import 'package:flutter/material.dart';

import '../../widgets/global_button.dart';
import '../../widgets/universal_textfield.dart';
import '../login_screen/login_screen.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  int activeIndex = 3;

  final GlobalKey<FormState> formKey = GlobalKey();

  final TextEditingController fullnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Create an account",
          style: AppTextStyle.GilroyBold.copyWith(
              color: AppColors.white, fontSize: 24),
        ),
      ),
      body: Form(
        autovalidateMode: AutovalidateMode.always,
        key: formKey,
        child: Padding(
          padding: EdgeInsets.only(top: 70.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UniversalTextFormField(
                  controller: fullnameController,
                  hintText: "Full name",
                  errorText: "",
                  type: TextInputType.text,
                  labelText: "Full name",
                ),
                32.getH(),
                UniversalTextFormField(
                  controller: emailController,
                  hintText: "Email",
                  errorText: "",
                  type: TextInputType.emailAddress,
                  labelText: "Email",
                ),
                32.getH(),
                UniversalTextFormField(
                  controller: passwordController,
                  hintText: "Password",
                  errorText: "",
                  type: TextInputType.emailAddress,
                  labelText: "Password",
                ),
                32.getH(),
                GlobalButton(
                  onTap: () {
                    bool validated = formKey.currentState!.validate();
                    print(validated);
                    if (validated) {
                      StorageRepository.setString(
                        key: "fullName",
                        value: fullnameController.text.toString(),
                      );
                      StorageRepository.setString(
                        key: "email",
                        value: emailController.text.toString(),
                      );
                      StorageRepository.setString(
                        key: "password",
                        value: passwordController.text.toString(),
                      );
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
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
                          return const LoginScreen();
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
                          return const LoginScreen();
                        },
                      ),
                    );
                  },
                  child: Text(
                    "Skip for now",
                    style: AppTextStyle.GilroyRegular.copyWith(
                        color: AppColors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
