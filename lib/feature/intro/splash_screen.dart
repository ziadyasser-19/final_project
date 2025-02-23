import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:final_project/feature/onboarding/presentation/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FlutterSplashScreen.fadeIn(
        nextScreen: OnboardingScreen(),
        backgroundColor: Colors.white,
        duration: const Duration(milliseconds: 3515),
        onInit: () async {
          debugPrint("onInit");
        },
        onEnd: () async {
          debugPrint("onEnd 1");
        },
        childWidget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 72.h,
              width: 72.w,
              child: Image.asset("assets/imgs/Icon.png"),
            ),
            SizedBox(height: 34.sp,),
            Text("zalada" , style: TextStyle(fontSize: 35.sp , fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
