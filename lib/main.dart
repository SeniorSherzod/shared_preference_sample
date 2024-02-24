import 'dart:io';
import 'package:cars_api_task/data/local/storage_repository.dart';
import 'package:cars_api_task/screens/account_screen/account_screen.dart';
import 'package:flutter/material.dart';


class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;


  }
}
Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  StorageRepository();
  HttpOverrides.global = new MyHttpOverrides();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      home: AccountScreen(),
    ),
  );
}