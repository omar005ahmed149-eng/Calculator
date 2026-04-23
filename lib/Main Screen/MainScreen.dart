import 'package:calculator/Main%20Screen/BottomScreen/Advanced_Bottom_Section.dart';
import 'package:calculator/Main%20Screen/BottomScreen/Normal_Bottom_Section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../Providers/ProviderClass.dart';
import 'Top_Section/Top_Section.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => MainscreenState();
}

class MainscreenState extends State<Mainscreen> {
  static  late bool advanced;
  @override
  void dispose() {
    context.read<Display_Inputs>().display_nums;
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Theme.of(context).scaffoldBackgroundColor,

      body:Padding(
        padding:  EdgeInsets.all(10.r),
        child:
        ChangeNotifierProvider(
          create: (_)=>Display_Inputs(),
          child: Column(
            children: [

              Expanded(
                  flex:4,
                  child: TopSection()
              ),
              Expanded(
                 flex:6,
                 child:advanced ? Advanced_section():Normal_BottomSection()),
            ],
          ),
        ),
      ),
    );
  }
}
