import 'package:calculator/Main%20Screen/BottomScreen/Bottom_Section.dart';
import 'package:flutter/material.dart';
import 'Top_Section/Top_Section.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Theme.of(context).scaffoldBackgroundColor,
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
