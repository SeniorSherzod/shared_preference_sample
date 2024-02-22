import 'package:cars_api_task/utils/colors/app_colors.dart';
import 'package:cars_api_task/utils/extensions/extensions.dart';
import 'package:cars_api_task/widgets/universal_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c_53b175,
      body: Column(
        children: [
          SizedBox(height: 200),
          UniversalTextFormField(
              hintText: "Email",
              onChanged: (value) {},
              onSubmit: (v) {},
              errorText: "email xaton",
              type: TextInputType.emailAddress,
              isVisible: true),
          SizedBox(height: 50),
          UniversalTextFormField(
              hintText: "Password",
              onChanged: (value) {},
              onSubmit: (v) {},
              errorText: "email xaton",
              type: TextInputType.emailAddress,
              isVisible: true),
          SizedBox(height: 20,),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: AppColors.black,

            ),
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
                child: Center(child: Text("Submit"))),
          ),
        ],
      ),
    );
  }
}
