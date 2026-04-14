import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Expanded(
          child: Text("1+2" ,style:Theme.of(context).textTheme.displayLarge,textAlign: TextAlign.end,),
        )
      ],
    );
  }
}
