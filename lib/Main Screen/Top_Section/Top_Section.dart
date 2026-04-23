import 'package:calculator/Main%20Screen/MainScreen.dart';
import 'package:calculator/core/Colors%20Manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Providers/ProviderClass.dart';

class TopSection extends StatefulWidget {
  TopSection({super.key});

  @override
  State<TopSection> createState() => _TopSectionState();
}

class _TopSectionState extends State<TopSection> {
  @override
  Widget build(BuildContext context) {
    final provider=context.watch<Display_Inputs>();
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: .end,
              children: [
                IconButton(onPressed: (){
                  setState(() {

                  MainscreenState.advanced=!MainscreenState.advanced;
                  print(MainscreenState.advanced);
                  });
                },
                  icon: Icon(Icons.calculate_outlined,
                    color: ColorsManager.white,
                    size: 40,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 8,
            child:
              Row(
                mainAxisAlignment: .end,
                children: [
                  Text(provider.display_nums.join() ,style:Theme.of(context).textTheme.displayLarge),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
