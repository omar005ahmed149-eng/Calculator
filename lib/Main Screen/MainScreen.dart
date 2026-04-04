import 'package:calculator/Main%20Screen/BottomScreen/Bottom_Section.dart';
import 'package:calculator/Main%20Screen/Widgets/Top_Section.dart';
import 'package:calculator/core/Colors%20Manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Container(
            color: ColorsManager.black,
            child: Column(
              children: [
                Expanded(
                    flex:2,
                    child: TopSection()),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Container(height: 1,color: ColorsManager.white,),
                      Container(height: 1,color: ColorsManager.white,),
                      Container(height: 1,color: ColorsManager.white,),
                    ],
                  ),
                ),

                Expanded(
                   flex:6,
                   child: BottomSection()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
