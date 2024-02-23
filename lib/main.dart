import 'dart:io';
import 'package:cars_api_task/data/local/storage_repository.dart';
import 'package:cars_api_task/screens/login_screen/login_screen.dart';
import 'package:cars_api_task/screens/main_screen/latech_screen.dart';
import 'package:cars_api_task/utils/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // StorageRepository();
  HttpOverrides.global = MyHttpOverrides();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        scaffoldBackgroundColor: AppColors.back,
        appBarTheme:const AppBarTheme(
          backgroundColor: AppColors.transparent,
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarBrightness: Brightness.dark,
              statusBarIconBrightness: Brightness.light,
              statusBarColor: AppColors.transparent),
          elevation: 0
        ),
      ),
      home: LatechScreen(),
    ),
  );
}
