import 'package:calculator/core/Colors%20Manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomizedButton extends StatelessWidget {
  CustomizedButton({super.key,required this.number, this.fgcolor, this.bgcolor,required this.ontap});
  final String number;
  Color? fgcolor;
  Color? bgcolor;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(vertical: 10.h,horizontal: 0.w),
      child: InkWell(
        splashColor: bgcolor??ColorsManager.grey,
        borderRadius: BorderRadius.circular(16.r),
        onTap: ontap,
        child: Container(
          margin: EdgeInsetsGeometry.symmetric(horizontal: 10.w,vertical: 6.h,),
          decoration: BoxDecoration(
            color: bgcolor??ColorsManager.grey,
            borderRadius: BorderRadiusGeometry.circular(16.r),
          ),
          child:  Padding(
            padding: EdgeInsets.symmetric(vertical: 7.h),
            child: Center(child: Text(number,style:GoogleFonts.poppins(fontSize: 28.sp,fontWeight: FontWeight.w400,color:fgcolor??ColorsManager.light_blue),)),
          ),
        ),
      ),
    );
  }
}
