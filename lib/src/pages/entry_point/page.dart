import 'package:flutter/material.dart';

import 'package:myapp/auth/auth_state.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:myapp/src/pages/index.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:map/map.dart';
import 'package:latlng/latlng.dart';

class PageEntryPoint extends StatefulWidget {
  const PageEntryPoint({
    Key? key,
  }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<PageEntryPoint> {
  final datasets = <String, dynamic>{};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: Container(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            color: Color(0xFFFFFFFF),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  top: 50,
                ),
                child: Icon(
                  MdiIcons.fromString('''abjad-hebrew'''),
                  size: 60,
                  color: Color(0xFF000000),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 65,
                  right: 15,
                ),
                child: Text(
                  '''Welcome to the test''',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: const Color(0xFF000000),
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      fontStyle: FontStyle.normal,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  textAlign: TextAlign.left,
                  maxLines: 2,
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              color: Color(0xFFFFFFFF),
            ),
            child: SafeArea(
              left: false,
              top: true,
              right: false,
              bottom: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    height: 600,
                    child: TCard(
                      onForward: (index, info) {
                        if (info.direction == SwipDirection.Right) {
                          //like

                        } else {
                          //dislike

                        }
                      },
                      onEnd: () {},
                      lockYAxis: false,
                      slideSpeed: 20,
                      delaySlideFor: 500,
                      cards: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 1,
                            top: 1,
                            right: 1,
                            bottom: 1,
                          ),
                          child: Container(
                            margin: EdgeInsets.zero,
                            padding: EdgeInsets.zero,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                  child: Image.network(
                                    '''https://source.unsplash.com/random''',
                                    width: double.maxFinite,
                                    height: 550,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.1,
                                  child: Container(
                                    margin: EdgeInsets.zero,
                                    padding: EdgeInsets.zero,
                                    width: double.maxFinite,
                                    height: 600,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF000000),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                      ),
                                    ),
                                    child: Text(
                                      '''''',
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          color: const Color(0xFFFFFFFF),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          fontStyle: FontStyle.normal,
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                      textAlign: TextAlign.left,
                                      maxLines: 1,
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 20,
                                        right: 20,
                                        bottom: 10,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '''Timmy''',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                color: const Color(0xFFFFFFFF),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 25,
                                                fontStyle: FontStyle.normal,
                                                decoration: TextDecoration.none,
                                              ),
                                            ),
                                            textAlign: TextAlign.left,
                                            maxLines: 1,
                                          ),
                                          Container(
                                            margin: EdgeInsets.zero,
                                            padding: EdgeInsets.zero,
                                            width: 40,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFFFFFFF),
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(40),
                                                topRight: Radius.circular(40),
                                                bottomRight:
                                                    Radius.circular(40),
                                                bottomLeft: Radius.circular(40),
                                              ),
                                            ),
                                            child: Icon(
                                              MdiIcons.fromString(
                                                  '''information-variant'''),
                                              size: 24,
                                              color: Color(0xFF000000),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 15,
                          ),
                          child: Container(
                            margin: EdgeInsets.zero,
                            padding: EdgeInsets.zero,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                  child: Image.network(
                                    '''https://source.unsplash.com/random''',
                                    width: double.maxFinite,
                                    height: 550,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.1,
                                  child: Container(
                                    margin: EdgeInsets.zero,
                                    padding: EdgeInsets.zero,
                                    width: double.maxFinite,
                                    height: 600,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF000000),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                      ),
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 20,
                                        right: 20,
                                        bottom: 10,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '''Michelle''',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                color: const Color(0xFFFFFFFF),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 25,
                                                fontStyle: FontStyle.normal,
                                                decoration: TextDecoration.none,
                                              ),
                                            ),
                                            textAlign: TextAlign.left,
                                            maxLines: 1,
                                          ),
                                          Container(
                                            margin: EdgeInsets.zero,
                                            padding: EdgeInsets.zero,
                                            width: 40,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFFFFFFF),
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20),
                                                bottomRight:
                                                    Radius.circular(20),
                                                bottomLeft: Radius.circular(20),
                                              ),
                                            ),
                                            child: Icon(
                                              MdiIcons.fromString(
                                                  '''information-variant'''),
                                              size: 24,
                                              color: Color(0xFF000000),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // BottomBar
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                          child: Column(
                        children: [
                          Icon(
                            MdiIcons.fromString('cards-heart'),
                            size: 44,
                            color: Color(0xFFF683E9),
                          ),
                          Text(
                            '',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: const Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.left,
                          )
                        ],
                      )),
                      GestureDetector(
                          child: Column(
                        children: [
                          Icon(
                            MdiIcons.fromString('message-reply-text'),
                            size: 44,
                            color: Color(0xFF2ACC9A),
                          ),
                          Text(
                            '',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: const Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.left,
                          )
                        ],
                      )),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
