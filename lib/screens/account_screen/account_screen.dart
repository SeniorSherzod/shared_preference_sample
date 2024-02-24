import 'package:cars_api_task/utils/colors/app_colors.dart';
import 'package:cars_api_task/utils/extensions/extensions.dart';
import 'package:cars_api_task/widgets/universal_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {

    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.c_53b175,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200.h,
            decoration: BoxDecoration(
              color: AppColors.main
            ),
          ),
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
