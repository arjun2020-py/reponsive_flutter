import 'package:flutter/material.dart';
import 'package:reponsive_flutter/Constnats/const.dart';
import 'package:reponsive_flutter/utils/my_box.dart';
import 'package:reponsive_flutter/utils/my_tile.dart';

class MobileScffold extends StatelessWidget {
  const MobileScffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefultBackground,
      appBar: myAppBar,
      drawer: myDrawer,
      body: Column(
        children: [
          // 4 box on the top of the body.
          Builder(builder: (context) {
            return AspectRatio(
              aspectRatio: 1, //it men it make squre.
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12),
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return const MyBox();
                  },
                ),
              ),
            );
          }),

          Expanded(
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return const MyTile();
              },
            ),
          )
          //tiles below its.
        ],
      ),
    );
  }
}
