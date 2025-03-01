import 'package:final_project/core/db/cache/cache_helper.dart';
import 'package:final_project/core/db/local_db/local_db_helpers.dart';
import 'package:final_project/core/network/dio_helper.dart';
import 'package:final_project/feature/intro/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  
  await SQLHelper.initDb();
  await CacheHelper.init();
  runApp(ScreenUtilInit(
    designSize: const Size(375, 812),
    minTextAdapt: true,
    splitScreenMode: false,
    builder: (context, builder) => const FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffFBFBFB),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
