import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 178, 193, 200),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 79.h),
                  child: Text(
                    "Login",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 60.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 51.h),
                padding: EdgeInsets.symmetric(horizontal: 45.w),
                child: Column(
                  children: [],
                ),
              )
            ]),
          ),
        ));
  }
}
