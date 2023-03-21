import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myschool/Views/Splash/login.dart';
import 'package:myschool/router/AppRouter.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<StatefulWidget> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  initState() {
    Future.delayed(const Duration(seconds: 5), () {
      print("Width: " + MediaQuery.of(context).size.width.toString());
      print("*****************  ");
      print("Hight: " + MediaQuery.of(context).size.height.toString());
      AppRoute.PushWithReplacementToWidget(const LoginScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 411.w,
        height: 891.h,
        child: Center(
          child: Image.asset(
            'assets/images/myschool.png',
            width: 360.w,
            height: 285.h,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
