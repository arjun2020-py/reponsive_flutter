import 'package:flutter/material.dart';

class SubTextWidget extends StatelessWidget {
  const SubTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Leo is an upcoming Indian Tamil-language gangster action film directed by Lokesh Kanagaraj, who co-wrote the script with Rathna Kumar and Deeraj Vaidy. The soundtrack will be composed by Anirudh Ravichander. It is produced by S. S. Lalit Kumar, under Seven Screen Studio, and co-produced by Jagadish Palanisamy.",
      style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w300,
          letterSpacing: 1.0,
          color: Color(0xffDDF7E3)),
    );
  }
}