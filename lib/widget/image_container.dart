
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 100),
      height: 250,
      child: Image.asset(
        "assets/images/leo1.png",
        fit: BoxFit.contain,
      ),
    );
  }
}