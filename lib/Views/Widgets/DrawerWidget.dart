import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myschool/router/app_router.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: 263.w,
      height: 800.h,
      alignment: Alignment.topLeft,
      child: Stack(
        children: [
          Container(
            color:const Color.fromRGBO(217, 217, 217, 1.0),
            alignment: Alignment.topLeft,
            width: 250.w,
            height: 800.h,
            padding: EdgeInsets.fromLTRB(16.w,40.h,16.w,0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 44.w,
                      height: 44.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(74, 73, 203, 1.0),
                        borderRadius: BorderRadius.circular(8.sp)
                      ),
                      child: Text(
                        "MM",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                    SizedBox(width: 8.w,),
                    Column(
                      children: [
                        SizedBox(
                          width: 160.w,
                          height: 22.h,
                          child: Text(
                            "Mohammed_20191186",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              overflow: TextOverflow.ellipsis
                            ),
                            maxLines: 1,
                          ),
                        ),
                        SizedBox(
                          width: 160.w,
                          height: 22.h,
                          child: Text(
                            "test@demo.com",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                overflow: TextOverflow.ellipsis
                            ),
                            maxLines: 1,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 50.h,),
                SizedBox(
                  width: 218.w,
                  height: 50.h,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Color.fromRGBO(245, 245, 245, 1.0),
                      filled: true,
                      prefixIcon: Icon(Icons.search_rounded,color:const Color.fromRGBO(124, 124, 122, 1.0),size: 24.sp,),
                      hintText: 'Search...',
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(124, 124, 122, 1.0),
                        fontSize: 16.sp,
                        fontFamily: 'Inter'
                      ),
                      contentPadding: EdgeInsets.fromLTRB(13.w, 16.h, 13.w, 16.h),
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(8.sp),
                        borderSide: BorderSide.none
                      ),

                    ),
                  ),
                ),
                SizedBox(height: 50.h,),
                TextButton(
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      backgroundColor:const Color.fromRGBO(217, 217, 217, 1.0)
                  ),
                  onPressed: (){

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.notifications,size: 30,color: Color.fromRGBO(124, 124, 122, 1.0),),
                          Container(
                            margin: EdgeInsets.only(left: 10.w),
                            child: Text('Notifications',style: TextStyle(color:const Color.fromRGBO(51, 51, 51, 1.0),fontSize: 16.sp),)
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.transparent,
            width: 263.w,
            height: 70.h,
            alignment: Alignment.bottomRight,
            child: Container(
              width: 26.w,
              height: 26.w,
              decoration: BoxDecoration(
                color:const Color.fromRGBO(74, 73, 203, 1.0),
                borderRadius: BorderRadius.circular(25.sp)
              ),
              child: InkWell(
                onTap: (){
                  AppRouter.pop();
                },
                child: Icon(Icons.arrow_back_ios_new_rounded,size: 17.sp,color: Colors.white,)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// Container(
// color: Colors.purple,
// width: 24.w,
// height: 24.w,
// margin: EdgeInsets.only(top: 50.h),
// ),