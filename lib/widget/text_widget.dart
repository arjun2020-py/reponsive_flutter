

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "LEO",
      style: GoogleFonts.aBeeZee(
        textStyle: const TextStyle(
            color: Color(0xffb62725),
            letterSpacing: 1.0,
            fontSize: kIsWeb ? 64 : 32,
            fontWeight: FontWeight.bold),
      ),
      //  TextStyle(
      //     fontSize: kIsWeb ? 64 : 32,
      //     fontWeight: FontWeight.w700,
      //     color: Color(0xffb62725)),
    );
  }
}