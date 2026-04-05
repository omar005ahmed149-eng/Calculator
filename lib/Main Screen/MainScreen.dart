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
      backgroundColor: Colors.black,
      body:Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Expanded(
                    flex:4,
                    child: TopSection()
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
