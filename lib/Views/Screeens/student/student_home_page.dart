import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:myschool/Views/Widgets/artical_widget.dart';

class StudentHomePage extends StatelessWidget {
  const StudentHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 10.w),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.list,
                        size: 50,
                        color: Colors.black,
                      )),
                  Text(
                    "Welcome Aladdin_1923123",
                    style:TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(children: [
                  ListView.builder(
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 312.w,
                          height: 217.h,
                          child: ListTile(
                              leading: const Icon(Icons.list),
                              trailing: const Text(
                                "GFG",
                                style: TextStyle(
                                    color: Colors.green, fontSize: 15),
                              ),
                              title: Text("List item $index")),
                        );
                      }),
                ]),
              )
            ],
          )),
    );
  }
}
