import 'package:flutter/material.dart';

class CardI {
  final String enstrumanAdi;
  final String enstrumanOzeti;
  final String enstrumanFoto1;
  final String enstrumanFoto2;
  final String enstrumanFoto3;

  CardI(
      {required this.enstrumanAdi,
      required this.enstrumanOzeti,
      required this.enstrumanFoto1,
      required this.enstrumanFoto2,
      required this.enstrumanFoto3});
}

final List<CardI> cardList = [
  CardI(
    enstrumanAdi: 'Matrix Electro-Guitar',
    enstrumanOzeti:
        'STG AF-8 Matrix, is part of our matrix private collection. Limited edition now!',
    enstrumanFoto1: 'images/elektro3.jpg',
    enstrumanFoto2: 'images/elektro1.jpg',
    enstrumanFoto3: 'images/elektro2.jpg',
  ),
  CardI(
    enstrumanAdi: 'Blue Clouds Acoustic Drum',
    enstrumanOzeti:
        'Blue Clouds Edition, it will take you above the blue clouds every time you hit a piece!',
    enstrumanFoto1: 'images/bateri2.jpg',
    enstrumanFoto2: 'images/bateri1.jpg',
    enstrumanFoto3: 'images/bateri3.jpg',
  ),
  CardI(
    enstrumanAdi: 'Red Devil Chromatic Akordeon',
    enstrumanOzeti:
        'Red Devils keys are dangerous and can make your fingers addicted to their keys.!',
    enstrumanFoto1: 'images/akordiyon1.jpg',
    enstrumanFoto2: 'images/akordiyon2.jpg',
    enstrumanFoto3: 'images/akordiyon3.jpg',
  ),
  CardI(
    enstrumanAdi: 'Gold-Plated Elto Saxophone',
    enstrumanOzeti:
        'Blow until youre out of breath and see what your breath can do!',
    enstrumanFoto1: 'images/saksafon3.jpeg',
    enstrumanFoto2: 'images/saksafon1.jpg',
    enstrumanFoto3: 'images/saksafon2.jpeg',
  ),
  CardI(
    enstrumanAdi: 'Swan Violin',
    enstrumanOzeti:
        'You will feel your arches floating on the strings of the swan violin like a swan!',
    enstrumanFoto1: 'images/keman1.jpeg',
    enstrumanFoto2: 'images/keman2.jpeg',
    enstrumanFoto3: 'images/keman3.jpeg',
  ),
  CardI(
    enstrumanAdi: 'Imperial Acoustic Guitar',
    enstrumanOzeti:
        'It may look like a classical guitar, but it wouldnt feel so good if we didnt have a nice touch to it!',
    enstrumanFoto1: 'images/gitar1.jpg',
    enstrumanFoto2: 'images/gitar2.jpg',
    enstrumanFoto3: 'images/gitar3.jpg',
  ),
  CardI(
    enstrumanAdi: 'Imperial Acoustic Guitar',
    enstrumanOzeti:
        'It may look like a classical guitar, but it wouldnt feel so good if we didnt have a nice touch to it!',
    enstrumanFoto1: 'images/gitar1.jpg',
    enstrumanFoto2: 'images/gitar2.jpg',
    enstrumanFoto3: 'images/gitar3.jpg',
  ),
];
