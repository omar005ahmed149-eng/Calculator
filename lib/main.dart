import 'package:calculator/Main%20Screen/MainScreen.dart';
import 'package:calculator/core/THeme_Manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      child: MaterialApp(
        darkTheme: ThemeManager.dark,
        theme: ThemeManager.light,
        themeMode:ThemeMode.light,
        debugShowCheckedModeBanner: false,
        home: Mainscreen(),
      ),
    );
  }
}