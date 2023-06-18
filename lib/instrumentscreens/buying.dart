import 'package:flutter/material.dart';
import 'package:flutter_application_1/userinfo.dart';

import '../models/buyinstrumentpagemodel.dart';

class buying extends StatefulWidget {
  final int index;
  var image;
  buying({this.image, required this.index});

  @override
  State<buying> createState() => _buyingState();
}

class _buyingState extends State<buying> {
  List<InstrumentPage> instrumenPageListesi =
      InstrumentPage.instrumentPageList();
  late InstrumentPage music;

  @override
  void initState() {
    super.initState();
    music = instrumenPageListesi[widget.index];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Hero(
                tag: widget.image,
                child: Container(
                  width: double.infinity,
                  height: 425,
                  decoration: BoxDecoration(
                    borderRadius: new BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    image: DecorationImage(
                        image: AssetImage(widget.image), fit: BoxFit.cover),
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    "technical features",
                    style: TextStyle(
                      fontFamily: 'LibreBarcode128',
                      fontSize: 50,
                    ),
                  ),
                  Divider(color: Colors.black, indent: 48, endIndent: 48),
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        music.text1,
                        style: TextStyle(
                            fontFamily: 'CoveredByYourGrace',
                            fontSize: 22,
                            color: Colors.black),
                      ),
                      SizedBox(width: 8),
                      Text(
                        music.text2,
                        style: TextStyle(
                          fontFamily: 'Galdeano',
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        music.text3,
                        style: TextStyle(
                            fontFamily: 'CoveredByYourGrace',
                            fontSize: 22,
                            color: Colors.black),
                      ),
                      SizedBox(width: 8),
                      Text(
                        music.text4,
                        style: TextStyle(
                          fontFamily: 'Galdeano',
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        music.text5,
                        style: TextStyle(
                            fontFamily: 'CoveredByYourGrace',
                            fontSize: 22,
                            color: Colors.black),
                      ),
                      SizedBox(width: 8),
                      Text(
                        music.text6,
                        style: TextStyle(
                          fontFamily: 'Galdeano',
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        music.text7,
                        style: TextStyle(
                            fontFamily: 'CoveredByYourGrace',
                            fontSize: 22,
                            color: Colors.black),
                      ),
                      SizedBox(width: 8),
                      Text(
                        music.text8,
                        style: TextStyle(
                          fontFamily: 'Galdeano',
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        music.text9,
                        style: TextStyle(
                            fontFamily: 'CoveredByYourGrace',
                            fontSize: 22,
                            color: Colors.black),
                      ),
                      SizedBox(width: 8),
                      Text(
                        music.text10,
                        style: TextStyle(
                          fontFamily: 'Galdeano',
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 60,
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(
                              Icons.arrow_back_rounded,
                              size: 27,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              music.buttoncolor1,
                              music.buttoncolor2,
                            ],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            onSurface: Colors.transparent,
                            shadowColor: Colors.transparent,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => userinfo())));
                            print("Buy now");
                          },
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Buy now",
                              style: TextStyle(
                                  fontFamily: 'Galdeano',
                                  color: Colors.white,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
