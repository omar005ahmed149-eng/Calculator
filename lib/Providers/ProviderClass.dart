import 'package:calculator/Main%20Screen/BottomScreen/Advanced_Bottom_Section.dart';
import 'package:calculator/Main%20Screen/BottomScreen/Normal_Bottom_Section.dart';
import 'package:flutter/material.dart';

class Display_Inputs extends ChangeNotifier{
  List<String> display_nums=[""];
  late String result;
  bool advanced=false;

  void Add_Input(String num_clicked){

    display_nums.add(num_clicked);

    notifyListeners();
  }
  void Remove_Input(){
    if(display_nums.isEmpty){
      display_nums=[];
    }else{
    display_nums.removeLast();
    }

    notifyListeners();
  }
  void Clear_Input(){

    display_nums.removeRange(0, display_nums.length);
    notifyListeners();
  }

  void Calculations(String char){
    switch(char){
      case "+":{

        break;
      }
      case "-":{

        break;
      }
      case "/":{

        break;
      }
      case "*":{

        break;
      }
      case "=":{
        Add_Input("=$result");
        print(display_nums);
        break;
      }
    }
    notifyListeners();
  }

  Widget Calc_Mode(){
    advanced=!advanced;
    notifyListeners();
    return advanced?Normal_BottomSection():Advanced_section();
  }

}
