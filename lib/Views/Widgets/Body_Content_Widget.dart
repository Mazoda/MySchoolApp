import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BodyContentWidget extends StatelessWidget {
  const BodyContentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 312.w,
      height: 217.h,
      margin: EdgeInsets.fromLTRB(24.w,0,24.w,37.h),
      padding: EdgeInsets.all(24.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.sp),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 9,
            offset: const Offset(5, 10), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(
            width: 264.w,
            height: 70.h,
            child: Text(
              "Final Exams Are Knocking! Prepare PreparePrepare",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 20.sp,
                overflow: TextOverflow.ellipsis,
              ),
              maxLines: 2,
            ),
          ),
          SizedBox(height: 5.h,),
          SizedBox(
            width: 264.w,
            height: 40.h,
            child: Text(
              "The final exams for all grades will begin at 5th May, consider preparation for",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                overflow: TextOverflow.ellipsis,
                fontFamily: 'Intro'
              ),
              maxLines: 2,
            ),
          ),
          SizedBox(height: 15.h,),
          Divider(
            thickness: 1.h,
          ),
          SizedBox(
            width: 264.w,
            height: 20.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 20.h,
                  width: 90.w,
                  child: Text(
                      "May 01,2002",
                    style: TextStyle(
                      color: const Color.fromRGBO(51, 51, 51, 1.0),
                      fontSize: 12.sp
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                  width: 50.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.remove_red_eye_rounded,size: 15.w,color: const Color.fromRGBO(51, 51, 51, 1.0),),
                      Text(
                        "1029",
                        style: TextStyle(
                            color: const Color.fromRGBO(51, 51, 51, 1.0),
                            fontSize: 12.sp
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
