import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myschool/Views/Screeens/student/student_home_page.dart';
import 'package:myschool/router/app_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 178, 193, 200),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: 200.h,
              alignment: Alignment.center,
              child: Text(
                "Login",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 36.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w600)),
              ),
            ),
            Container(
              width: 360.w,
              height: 600.h,
              padding: EdgeInsets.symmetric(horizontal: 45.w, vertical: 38.h),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.w),
                    topRight: Radius.circular(30.w),
                  )),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Email",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 24.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  //TODO : Edit Email TextField

                  const TextField(),
                  SizedBox(
                    height: 20.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Password",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 24.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  //TODO : Edit PassWord TextField

                  const TextField(),
                  Container(
                    margin: EdgeInsets.only(top: 34.h),
                    child: SizedBox(
                      height: 50.h,
                      width: 240.w,
                      child: ElevatedButton(
                        onPressed: () {
                          AppRouter.pushWithReplacementToWidget(
                              const StudentHomePage());
                        },
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            foregroundColor:
                                const Color.fromARGB(32, 135, 255, 1)),
                        child: Text(
                          "Login",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 24.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Faild to login?",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 18.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )),
                      Text(" Contact Us",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 18.sp,
                                color: const Color.fromARGB(207, 150, 39, 48),
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  )
                ],
              ),
            )
          ]),
        ));
  }
}
