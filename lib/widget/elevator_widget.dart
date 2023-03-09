import 'package:flutter/material.dart';

class ElevatorWidget extends StatelessWidget {
  const ElevatorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          primary: const Color(0xff5D9C59)),
      child: const Icon(
        Icons.photo_library,
      ),
    );
  }
}