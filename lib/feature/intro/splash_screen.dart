import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:final_project/core/db/cache/cache_helper.dart';
import 'package:final_project/feature/main_screen/presentation/mainscreen.dart';
import 'package:final_project/feature/onboarding/presentation/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   bool isLogin = false;
  String? token;

@override
  void initState() {
    CacheHelper.init();
    token = CacheHelper.getData(key: "token");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FlutterSplashScreen.fadeIn(
        nextScreen: token != null ? MainScreen() : OnboardingScreen(),
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
