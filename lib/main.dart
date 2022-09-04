import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_app/screens/on_boarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 5, 5, 5),
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
          ),
          bodyText2: TextStyle(
            color: Color.fromARGB(255, 206, 201, 201),
            fontFamily: 'Poppins',
          ),
        ),
      ),
      home: OnBoardingPage(),
    );
  }
}
