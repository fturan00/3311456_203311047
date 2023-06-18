import 'dart:ui';

import 'package:flutter/material.dart';

class InstrumentPage {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  final String text6;
  final String text7;
  final String text8;
  final String text9;
  final String text10;
  final Color buttoncolor1;
  final Color buttoncolor2;

  InstrumentPage({
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.text5,
    required this.text6,
    required this.text7,
    required this.text8,
    required this.text9,
    required this.text10,
    required this.buttoncolor1,
    required this.buttoncolor2,
  });

  static List<InstrumentPage> instrumentPageList() {
    return [
      InstrumentPage(
        text1: 'Body:',
        text2: 'Maple',
        text3: 'Color:',
        text4: 'Matrix emerald green',
        text5: 'Number of Wires:',
        text6: '6',
        text7: 'Length:',
        text8: '24.5',
        text9: 'Controls:',
        text10: ' 2x volume, 1x master tone',
        buttoncolor1: Color.fromARGB(255, 65, 194, 69),
        buttoncolor2: Colors.blue,
      ),
      InstrumentPage(
        text1: 'Material:',
        text2: 'Alder',
        text3: 'Color:',
        text4: 'Cloud blue',
        text5: 'Number of Pieces:',
        text6: '5',
        text7: 'Trampet:',
        text8: '5 x 13.5',
        text9: 'Floor Tom:',
        text10: '13 x 17.5',
        buttoncolor1: Colors.orangeAccent,
        buttoncolor2: Colors.blueAccent,
      ),
      InstrumentPage(
        text1: 'Class:',
        text2: 'Chromatic',
        text3: 'Color:',
        text4: 'Devil red',
        text5: 'Number of Notes:',
        text6: '34',
        text7: 'Lowest note:',
        text8: 'F',
        text9: 'Highest note',
        text10: 'E',
        buttoncolor1: Color(0xffd50000),
        buttoncolor2: Color(0xffef5350),
      ),
      InstrumentPage(
        text1: 'Class:',
        text2: 'Elto',
        text3: 'Color:',
        text4: 'Golden yellow',
        text5: 'Hanger link:',
        text6: 'Steel',
        text7: 'Auxiliary key:',
        text8: 'High F#',
        text9: 'Processing:',
        text10: 'Hand mader',
        buttoncolor1: Color(0xffffc107),
        buttoncolor2: Color(0xffffab00),
      ),
      InstrumentPage(
        text1: 'Body:',
        text2: 'Spruce',
        text3: 'Neck:',
        text4: 'Maple',
        text5: 'Measurement:',
        text6: '4/4',
        text7: 'Keyboard:',
        text8: 'Composite',
        text9: 'Type:',
        text10: 'Classic',
        buttoncolor1: Color(0xffd84315),
        buttoncolor2: Colors.black,
      ),
      InstrumentPage(
        text1: 'Body:',
        text2: 'Solid sitka ladin',
        text3: 'Neck:',
        text4: 'Maun',
        text5: 'Length:',
        text6: '26',
        text7: 'Curtains:',
        text8: '21',
        text9: 'Type:',
        text10: 'Acoustic',
        buttoncolor1: Color(0xffef6c00),
        buttoncolor2: Colors.black,
      ),
    ];
  }
}
