import 'package:calculator/Main%20Screen/BottomScreen/widgets/Customized_Button.dart';
import 'package:calculator/Providers/ProviderClass.dart';
import 'package:calculator/core/Colors%20Manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Advanced_section extends StatelessWidget {
  const Advanced_section({super.key});
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
                          ontap: (){
                            context.read<Display_Inputs>().Clear_Input();
                          }
                      ),
                    ),
                    Expanded(
                      child: CustomizedButton(
                          number: "C",
                          fgcolor: ColorsManager.white,
                          bgcolor:  ColorsManager.light_grey,
                          lightbgcolor: ColorsManager.white,
                          ontap: (){
                            context.read<Display_Inputs>().Remove_Input();
                          }
                      ),
                    ),
                    Expanded(
                      child: CustomizedButton(
                          number: "%",
                          fgcolor: ColorsManager.white,
                          bgcolor:  ColorsManager.dark_blue,
                          ontap: (){
                            // context.read<Display_Inputs>();
                          }
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
                            Expanded(child: CustomizedButton(number: "7", ontap: () {
                              context.read<Display_Inputs>().Add_Input("7");
                            },)),
                            Expanded(child: CustomizedButton(number: "8", ontap: () {
                              context.read<Display_Inputs>().Add_Input("8");
                            },)),
                            Expanded(child: CustomizedButton(number: "9", ontap: () {
                              context.read<Display_Inputs>().Add_Input("9");

                            },)),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(child: CustomizedButton(number: "4",ontap: () {
                              context.read<Display_Inputs>().Add_Input("4");
                            },)),
                            Expanded(child: CustomizedButton(number: "5",ontap: () {
                              context.read<Display_Inputs>().Add_Input("5");
                            },)),
                            Expanded(child: CustomizedButton(number: "6",ontap: () {
                              context.read<Display_Inputs>().Add_Input("6");
                            },)),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(child: CustomizedButton(number: "1", ontap: () {
                              context.read<Display_Inputs>().Add_Input("1");
                            },)),
                            Expanded(child: CustomizedButton(number: "2", ontap: () {
                              context.read<Display_Inputs>().Add_Input("2");
                            },)),
                            Expanded(child: CustomizedButton(number: "3", ontap: () {
                              context.read<Display_Inputs>().Add_Input("3");
                            },)),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                                // flex:6,
                                child: CustomizedButton(number: "00", ontap: () {
                                  context.read<Display_Inputs>().Add_Input("00");
                                },)),

                            Expanded(
                              // flex:3,
                                child: CustomizedButton(number: "0 ok", ontap: () {
                                  context.read<Display_Inputs>().Add_Input("0");
                                },
                                )
                            ),

                            Expanded(
                                // flex:6,
                                child: CustomizedButton(number: ".", ontap: () {
                                  context.read<Display_Inputs>().Add_Input(".");
                                },)),
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
                // flex:2,
                child: CustomizedButton(
                    number: "/",
                    fgcolor: ColorsManager.white,
                    bgcolor:  ColorsManager.dark_blue,
                    ontap: (){}
                ),
              ),
              Expanded(
                // flex:2,
                child: CustomizedButton(
                    number: "*",
                    fgcolor: ColorsManager.white,
                    bgcolor:  ColorsManager.dark_blue,
                    ontap: (){}
                ),
              ),
              Expanded(
                // flex:2,
                child: CustomizedButton(
                    number: "-",
                    fgcolor: ColorsManager.white,
                    bgcolor:  ColorsManager.dark_blue,
                    ontap: (){}
                ),
              ),
              Expanded(
                // flex:3,
                child: CustomizedButton(
                    number: "+",
                    fgcolor: ColorsManager.white,
                    bgcolor:  ColorsManager.dark_blue,
                    ontap: (){
                      context.read<Display_Inputs>().Calculations("+");
                      context.read<Display_Inputs>().Add_Input("+");
                    }
                ),
              ),
              Expanded(
                // flex:3,
                child: CustomizedButton(
                    number: "=",
                    fgcolor: ColorsManager.white,
                    bgcolor:  ColorsManager.light_blue,
                    ontap: (){
                      context.read<Display_Inputs>().Calculations("=");
                    }
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}



