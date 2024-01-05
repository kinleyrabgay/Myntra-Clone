import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:myntra/feature/landing_page/landing_page.dart';
import 'package:myntra/foundation/theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Myntra',
      theme: ThemeData(
        textTheme: TextTheme(
            titleLarge: TextStyle(
              fontSize: 14.5,
              letterSpacing: 0.5,
              color: AppColor.textColor1,
            ),
            bodyLarge: TextStyle(
              color: AppColor.textColor2,
              fontSize: 14,
            ),
            bodySmall: TextStyle(
              color: AppColor.textColor1,
              fontSize: 11,
            )),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LandingPage(),
    );
  }
}
