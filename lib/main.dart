import 'dart:async';

import 'dart:io';

import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'contacts.dart';
import 'firebase_options.dart';
import 'graphic.dart';
import 'instrumentscreens/buying.dart';
import 'loginpage.dart';
import 'models/model.dart';
import 'musicscreen.dart';
import 'saved.dart';
import 'package:rive/rive.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 10,
        title: Text(
          "music utopia",
          style: TextStyle(fontFamily: 'CoveredByYourGrace', fontSize: 26),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => loginpage())));
            },
            icon: const Icon(
              Icons.person_pin,
              size: 32,
            ),
          ),
          SizedBox(
            width: 210,
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => graphic())));
            },
            icon: const Icon(
              Icons.donut_large,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => contacts())));
            },
            icon: const Icon(
              Icons.contacts,
              size: 28,
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
      ),
      body: ListView(
        children: [
          SizedBox(height: 15),
          Container(
            height: 80,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 30,
                ),
                kategoriListesi(
                    'images/elektrogitar.png',
                    musicscreen(
                      index: 0,
                    )),
                SizedBox(
                  width: 10,
                ),
                kategoriListesi(
                    'images/tuşlu.png',
                    musicscreen(
                      index: 1,
                    )),
                SizedBox(
                  width: 10,
                ),
                kategoriListesi(
                    'images/üflemeli.png',
                    musicscreen(
                      index: 2,
                    )),
                SizedBox(
                  width: 10,
                ),
                kategoriListesi(
                    'images/gitar.png',
                    musicscreen(
                      index: 3,
                    )),
                SizedBox(
                  width: 10,
                ),
                kategoriListesi(
                    'images/vurmalı.png',
                    musicscreen(
                      index: 4,
                    )),
                SizedBox(
                  width: 10,
                ),
                kategoriListesi(
                    'images/keman.png',
                    musicscreen(
                      index: 5,
                    )),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          cardYapisi(
            card: cardList[0],
            index: 0,
          ),
          cardYapisi(
            card: cardList[1],
            index: 1,
          ),
          cardYapisi(
            card: cardList[2],
            index: 2,
          ),
          cardYapisi(
            card: cardList[3],
            index: 3,
          ),
          cardYapisi(
            card: cardList[4],
            index: 4,
          ),
          cardYapisi(
            card: cardList[5],
            index: 5,
          ),
        ],
      ),
    );
  }

  kategoriListesi(String s, final Widget nextPage) {
    return Builder(builder: (BuildContext context) {
      return Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => nextPage)));
            },
            child: CircleAvatar(
              radius: 32,
              backgroundColor: Color.fromARGB(255, 84, 71, 71),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.black,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                      image: AssetImage(s),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}

class cardYapisi extends StatelessWidget {
  final CardI card;
  final int index;

  const cardYapisi({
    required this.card,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        borderRadius: BorderRadius.circular(15),
        elevation: 10,
        color: Colors.white,
        child: Container(
          height: 440,
          width: 500,
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                card.enstrumanAdi,
                style: TextStyle(
                    fontFamily: 'JosefinSans',
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 2),
              Text(
                card.enstrumanOzeti,
                style: TextStyle(
                    fontFamily: 'CoveredByYourGrace',
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => buying(
                                image: card.enstrumanFoto1,
                                index: index,
                              ))));
                    },
                    child: Hero(
                      tag: card.enstrumanFoto1,
                      child: Container(
                        height: 290,
                        width: (MediaQuery.of(context).size.width - 60) / 2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            image: DecorationImage(
                                image: AssetImage(card.enstrumanFoto1),
                                fit: BoxFit.fill)),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => buying(
                                    image: card.enstrumanFoto2,
                                    index: index,
                                  )));
                        },
                        child: Hero(
                          tag: card.enstrumanFoto2,
                          child: Container(
                            height: 175,
                            width:
                                (MediaQuery.of(context).size.width - 100) / 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(card.enstrumanFoto2),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => buying(
                                    image: card.enstrumanFoto3,
                                    index: index,
                                  )));
                        },
                        child: Hero(
                          tag: card.enstrumanFoto3,
                          child: Container(
                            height: 110,
                            width:
                                (MediaQuery.of(context).size.width - 100) / 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(card.enstrumanFoto3),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 3),
              Divider(color: Colors.black, indent: 10, endIndent: 12),
              Row(
                children: [
                  SizedBox(width: 300),
                  LikeButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
