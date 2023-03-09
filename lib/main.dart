import 'package:flutter/material.dart';
import 'package:reponsive_flutter/responsive/desktop_scffold.dart';
import 'package:reponsive_flutter/responsive/mobile_scffold.dart';
import 'package:reponsive_flutter/responsive/responsive_layout.dart';
import 'package:reponsive_flutter/responsive/tabelet_scffold.dart';

import 'view/screen/reponsive_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: ResponsiveLayout(
        mobile: const MobileScffold(),
        tablet: const TabletScfflod(),
        desktop: const DesktopScffold(),
      ),
    );
  }
}
