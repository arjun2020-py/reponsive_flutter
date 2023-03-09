import 'package:flutter/material.dart';
import 'package:reponsive_flutter/Constnats/const.dart';

import '../utils/my_box.dart';
import '../utils/my_tile.dart';

class DesktopScffold extends StatelessWidget {
  const DesktopScffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefultBackground,
      appBar: myAppBar,
      body: Row(
        children: [
          //open drawer screen
          myDrawer,

          //rest of the body
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  // 4 box on the top of the body.
                  Builder(builder: (context) {
                    return AspectRatio(
                      aspectRatio: 4, //it men it make squre.
                      child: SizedBox(
                        width: double.infinity,
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
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
                    flex: 2,
                    child: ListView.builder(
                      itemCount: 6,
                      itemBuilder: (BuildContext context, int index) {
                        return const MyTile();
                      },
                    ),
                  )
                  //tiles below its.
                ],
              )),

          Expanded(
              child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.pinkAccent,
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
