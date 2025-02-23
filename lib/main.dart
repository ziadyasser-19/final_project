
import 'package:final_project/feature/intro/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() {
  runApp(ScreenUtilInit(
    designSize: const Size(375, 812),
    minTextAdapt: true,
    splitScreenMode: false,
    builder: (context, builder) => const FirstPage() ,
  ));
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
    scaffoldBackgroundColor: Colors.white, 
  ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen() ,
    );
  }
}
