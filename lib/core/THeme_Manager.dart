import 'package:calculator/core/Colors%20Manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeManager{
  static final ThemeData dark= ThemeData(
      scaffoldBackgroundColor: ColorsManager.black,

      cardTheme:CardThemeData(
        color: ColorsManager.grey,
        margin: EdgeInsetsGeometry.symmetric(horizontal: 10,vertical: 6,),
        elevation: 0,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(16)),
      ) ,
      textTheme: TextTheme(
        labelMedium:GoogleFonts.poppins(fontSize: 28,fontWeight: FontWeight.w400,color:ColorsManager.light_blue),
        displayLarge:GoogleFonts.poppins(color: ColorsManager.white,fontSize: 40,fontWeight: FontWeight.w400,),
      )

  );


  static final ThemeData light= ThemeData(
    scaffoldBackgroundColor: ColorsManager.white,

    cardTheme:CardThemeData(
        color: ColorsManager.light_grey.withOpacity(0.2),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        elevation: 0,
        shadowColor: ColorsManager.grey.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: ColorsManager.black.withOpacity(0.6))
        ) ,
    ),
    textTheme: TextTheme(
      labelMedium:GoogleFonts.poppins(fontSize:28,fontWeight: FontWeight.w400,color:ColorsManager.black.withOpacity(0.6)),
      displayLarge:GoogleFonts.poppins(color: ColorsManager.black,fontSize: 40,fontWeight: FontWeight.w400,),
    )

  );

}