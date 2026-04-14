import 'package:calculator/core/Colors%20Manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomizedButton extends StatelessWidget {
  CustomizedButton({super.key,required this.number, this.fgcolor, this.bgcolor,required this.ontap,this.lightbgcolor, this.lightfgcolor,});
  final String number;
  Color? fgcolor;
  Color? bgcolor;
  Color? lightfgcolor;
  Color? lightbgcolor;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(vertical: 10.h,horizontal: 0.w),
      child: InkWell(
        splashColor: bgcolor??ColorsManager.black.withOpacity(0.7),
        borderRadius: BorderRadius.circular(16.r),
        onTap: ontap,
        child: Card(
          color:Theme.of(context).cardTheme.copyWith(color: bgcolor).color,
          child:  Padding(
            padding: EdgeInsets.symmetric(vertical: 7.h),
            child: Center(child: Text(number,style:Theme.of(context).textTheme.labelMedium?.copyWith(color: fgcolor),)),
          ),
        ),
      ),
    );
  }
}
