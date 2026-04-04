import 'package:calculator/core/Colors%20Manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomizedButton extends StatelessWidget {
  const CustomizedButton({super.key,required this.number,required this.fgcolor,required this.bgcolor, required this.ontap});
  final String number;
  final Color fgcolor;
  final Color bgcolor;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          margin: EdgeInsetsGeometry.symmetric(horizontal: 10.w,vertical: 10.h,),
          decoration: BoxDecoration(
            color: bgcolor,
            borderRadius: BorderRadiusGeometry.circular(16.r),
          ),
          child:  Center(child: Text(number,style:GoogleFonts.poppins(fontSize: 32.sp,fontWeight: FontWeight.bold,color:fgcolor),)),
        ),
      ),
    );
  }
}
