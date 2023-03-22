import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myschool/Views/Splash/splash_screen.dart';
import 'package:myschool/router/app_router.dart';

// import 'package:provider/provider.dart';
// import 'firebase_options.dart';

// ...

void main() async {
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyHomePage());
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 800),
        builder: (context, child) {
          return MaterialApp(
            navigatorKey: AppRouter.navkey,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: 'Poppins',
              primarySwatch: Colors.grey
            ),
            home: const SplashScreen(),
          );
        });
  }
}
