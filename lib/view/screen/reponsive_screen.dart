import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/elevator_widget.dart';
import '../../widget/image_container.dart';
import '../../widget/sub_text_widget.dart';
import '../../widget/text_widget.dart';

class ResponsiveScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff211114),
      body: SingleChildScrollView(
        child: Container(
          width: screenSize.width,
          height: screenSize.height,
          child: Stack(
            children: <Widget>[
              //make curves for desgining

              ClipPath(
                clipper: WaveClipperOne(),
                child: Container(
                  color: const Color(0xffba8b69),
                  height: 100,
                  width: screenSize.width,
                ),
              ),

              ClipPath(
                clipper: WaveClipperTwo(),
                child: Container(
                  color: const Color(0xffba8b69),
                  height: 100,
                  width: screenSize.width,
                ),
              ),

              //curves for bottom
              Positioned(
                bottom: 0,
                left: 0,
                child: ClipPath(
                  clipper: WaveClipperOne(reverse: true),
                  child: Container(
                    color: const Color(0xffba8b69),
                    height: 60,
                    width: screenSize.width,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: ClipPath(
                  clipper: WaveClipperTwo(reverse: true),
                  child: Container(
                    color: const Color(0xffba8b69),
                    height: 70,
                    width: screenSize.width,
                  ),
                ),
              ),

              //lets make content
              //lets first make content for small screens that is less than 580

              screenSize.width < 580
                  ? Container(
                      //for small
                      width: screenSize.width,
                      height: screenSize.height,
                      child: Column(
                        children: <Widget>[
                          //Lets make container for picture

                          const ImageWidget(),

                          const SizedBox(
                            height: 16,
                          ),
                          Expanded(
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 64),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const <Widget>[
                                  TextWidget(),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  SubTextWidget(),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  ElevatorWidget()
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  : Container(
                      //for large screens
                      height: screenSize.height,
                      width: screenSize.width,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 64),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const <Widget>[
                                        SizedBox(
                                          height: 8,
                                        ),
                                        TextWidget(),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        SubTextWidget(),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        ElevatorWidget()
                                      ],
                                    ),
                                  ),
                                ),
                                const ImageWidget()
                              ],
                            ),
                          )
                        ],
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}

// class ElevatorWidget extends StatelessWidget {
//   const ElevatorWidget({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {},
//       style: ElevatedButton.styleFrom(primary: const Color(0xff5D9C59)),
//       child: const Icon(
//         Icons.photo_library,
//       ),
//     );
//   }
// }

// class TextWidget extends StatelessWidget {
//   const TextWidget({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       "LEO",
//       style: GoogleFonts.aBeeZee(
//         textStyle: const TextStyle(
//             color: Color(0xffb62725),
//             letterSpacing: 1.0,
//             fontSize: kIsWeb ? 64 : 32,
//             fontWeight: FontWeight.bold),
//       ),
//       //  TextStyle(
//       //     fontSize: kIsWeb ? 64 : 32,
//       //     fontWeight: FontWeight.w700,
//       //     color: Color(0xffb62725)),
//     );
//   }
// }
