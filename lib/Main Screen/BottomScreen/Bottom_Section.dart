import 'package:calculator/Main%20Screen/BottomScreen/widgets/Customized_Button.dart';
import 'package:calculator/core/Colors%20Manager.dart';
import 'package:flutter/material.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  final List<List<String>> buttons = const [
    ["7", "8", "9"],
    ["4", "5", "6"],
    ["1", "2", "3"],
    ["0", "."],
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 8,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      child: CustomizedButton(
                          number: "Ac",
                          fgcolor: ColorsManager.white,
                          bgcolor:  ColorsManager.light_grey,
                          ontap: (){}
                      ),
                    ),
                    Expanded(
                      child: CustomizedButton(
                          number: "C",
                          fgcolor: ColorsManager.white,
                          bgcolor:  ColorsManager.light_grey,
                          ontap: (){}
                      ),
                    ),
                    Expanded(
                      child: CustomizedButton(
                          number: "/",
                          fgcolor: ColorsManager.white,
                          bgcolor:  ColorsManager.light_blue,
                          ontap: (){}
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 8,
                child: Column(
                  children: [
                   Expanded(
                     child: Row(
                       children: [
                         CustomizedButton(number: "1", fgcolor: ColorsManager.dark_blue, bgcolor: ColorsManager.grey, ontap: () {  },),
                         CustomizedButton(number: "1", fgcolor: ColorsManager.dark_blue, bgcolor: ColorsManager.grey, ontap: () {  },),
                         CustomizedButton(number: "1", fgcolor: ColorsManager.dark_blue, bgcolor: ColorsManager.grey, ontap: () {  },),
                         ],
                     ),
                   ),
                   Expanded(
                     child: Row(
                       children: [
                         CustomizedButton(number: "1", fgcolor: ColorsManager.dark_blue, bgcolor: ColorsManager.grey, ontap: () {  },),
                         CustomizedButton(number: "1", fgcolor: ColorsManager.dark_blue, bgcolor: ColorsManager.grey, ontap: () {  },),
                         CustomizedButton(number: "1", fgcolor: ColorsManager.dark_blue, bgcolor: ColorsManager.grey, ontap: () {  },),
                         ],
                     ),
                   ),
                   Expanded(
                     child: Row(
                       children: [
                         CustomizedButton(number: "1", fgcolor: ColorsManager.dark_blue, bgcolor: ColorsManager.grey, ontap: () {  },),
                         CustomizedButton(number: "1", fgcolor: ColorsManager.dark_blue, bgcolor: ColorsManager.grey, ontap: () {  },),
                         CustomizedButton(number: "1", fgcolor: ColorsManager.dark_blue, bgcolor: ColorsManager.grey, ontap: () {  },),
                         ],
                     ),
                   ),
                   Expanded(
                     child: Row(
                       children: [
                         CustomizedButton(number: "1", fgcolor: ColorsManager.dark_blue, bgcolor: ColorsManager.grey, ontap: () {  },),
                         CustomizedButton(number: "1", fgcolor: ColorsManager.dark_blue, bgcolor: ColorsManager.grey, ontap: () {  },),
                         CustomizedButton(number: "1", fgcolor: ColorsManager.dark_blue, bgcolor: ColorsManager.grey, ontap: () {  },),
                         ],
                     ),
                   ),
                   Expanded(
                     child: Row(
                       children: [
                         CustomizedButton(number: "1", fgcolor: ColorsManager.dark_blue, bgcolor: ColorsManager.grey, ontap: () {  },),
                         CustomizedButton(number: "1", fgcolor: ColorsManager.dark_blue, bgcolor: ColorsManager.grey, ontap: () {  },),
                         CustomizedButton(number: "1", fgcolor: ColorsManager.dark_blue, bgcolor: ColorsManager.grey, ontap: () {  },),
                         ],
                     ),
                   ),
                  ]
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex:2,
          child: Column(
            children: [

            ],
          ),
        ),
      ],
    );
  }
}



// buttons.map((row){
// return Expanded(
// child: Row(
// children:row.map((value){
// return Expanded(
// child: CustomizedButton(
// number: value,
// fgcolor: ColorsManager.light_blue,
// bgcolor:  ColorsManager.grey,
// ontap: (){}
// ),
// );
// }
// ).toList(),
// ),
// );
// }).toList(),
