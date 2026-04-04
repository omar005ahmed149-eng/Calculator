import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/Colors Manager.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text("12,454=",style: GoogleFonts.poppins(fontSize: 48,color: ColorsManager.white),textDirection: TextDirection.rtl,),
        )
      ],
    );
  }
}
