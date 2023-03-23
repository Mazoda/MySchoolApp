import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Widgets/Body_Content_Widget.dart';
import '../../Widgets/DrawerWidget.dart';

class StudentHomePage extends StatelessWidget {
  const StudentHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu_rounded,size: 24.sp,),
              onPressed: () { Scaffold.of(context).openDrawer(); },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),

        title: Text(
            "Welcome, Mohammed_20191186",
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 16.sp
          ),
        ),
        toolbarHeight: 60.h,
      ),
      drawer: DrawerWidget(),
      body:Container(
        color: Colors.white,
        width: 360.w,
        height: 725.h,
        child: ListView.builder(
          itemCount: 5,
            itemBuilder:(BuildContext context,int index){
              return BodyContentWidget();
            }
        ),
      ),
    );
  }
}
