import 'package:calculator/Main%20Screen/BottomScreen/widgets/Customized_Button.dart';
import 'package:calculator/core/Colors%20Manager.dart';
import 'package:flutter/material.dart';
class BottomSection extends StatelessWidget {
  const BottomSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 6,
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
                          lightbgcolor: ColorsManager.white,
                          ontap: (){}
                      ),
                    ),
                    Expanded(
                      child: CustomizedButton(
                          number: "/",
                          fgcolor: ColorsManager.white,
                          bgcolor:  ColorsManager.dark_blue,
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
                         Expanded(child: CustomizedButton(number: "7", ontap: () {  },)),
                         Expanded(child: CustomizedButton(number: "8", ontap: () {  },)),
                         Expanded(child: CustomizedButton(number: "9", ontap: () {  },)),
                         ],
                     ),
                   ),
                   Expanded(
                     child: Row(
                       children: [
                         Expanded(child: CustomizedButton(number: "4",ontap: () {  },)),
                         Expanded(child: CustomizedButton(number: "5",ontap: () {  },)),
                         Expanded(child: CustomizedButton(number: "6",ontap: () {  },)),
                         ],
                     ),
                   ),
                   Expanded(
                     child: Row(
                       children: [
                         Expanded(child: CustomizedButton(number: "1", ontap: () {  },)),
                         Expanded(child: CustomizedButton(number: "2", ontap: () {  },)),
                         Expanded(child: CustomizedButton(number: "3", ontap: () {  },)),
                         ],
                     ),
                   ),
                   Expanded(
                     child: Row(
                       children: [
                         Expanded(
                           flex:6,
                             child: CustomizedButton(number: "0", ontap: () {  },)),
                         Expanded(
                             flex:3,
                             child: CustomizedButton(number: ".", ontap: () {  },)),
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
              Expanded(
                flex:2,
                child: CustomizedButton(
                    number: "*",
                    fgcolor: ColorsManager.white,
                    bgcolor:  ColorsManager.dark_blue,
                    ontap: (){}
                ),
              ),
              Expanded(
                flex:2,
                child: CustomizedButton(
                    number: "-",
                    fgcolor: ColorsManager.white,
                    bgcolor:  ColorsManager.dark_blue,
                    ontap: (){}
                ),
              ),
              Expanded(
                flex:3,
                child: CustomizedButton(
                    number: "+",
                    fgcolor: ColorsManager.white,
                    bgcolor:  ColorsManager.dark_blue,
                    ontap: (){}
                ),
              ),
              Expanded(
                flex:3,
                child: CustomizedButton(
                    number: "=",
                    fgcolor: ColorsManager.white,
                    bgcolor:  ColorsManager.light_blue,
                    ontap: (){}
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}



