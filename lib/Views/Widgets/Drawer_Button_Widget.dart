import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrawerButton extends StatelessWidget {
  DrawerButton({Key? key,required this.title,required this.onButtonPressed,required this.iconButton}) : super(key: key);
  String title;
  Function onButtonPressed;
  IconData iconButton;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor:const Color.fromRGBO(217, 217, 217, 1.0)
      ),
      onPressed: (){
        onButtonPressed();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(iconButton,size: 24.sp,color:const Color.fromRGBO(124, 124, 122, 1.0),),
              Container(
                  margin: EdgeInsets.only(left: 10.w),
                  child: Text(title,style: TextStyle(color:const Color.fromRGBO(51, 51, 51, 1.0),fontFamily: 'Inter',fontSize: 16.sp),)
              ),
            ],
          ),
        ],
      ),
    );
  }
}
