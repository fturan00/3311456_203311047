import 'dart:ui';

class MusicPage {
  final String imageMusic1;
  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;
  final String enstrumanNameMusic;
  final String enstrumanfileMusicUrl;

  MusicPage(
      {required this.imageMusic1,
      required this.color1,
      required this.color2,
      required this.color3,
      required this.color4,
      required this.enstrumanNameMusic,
      required this.enstrumanfileMusicUrl});

  static List<MusicPage> musicPageList() {
    return [
      MusicPage(
        imageMusic1: 'images/elektro1.jpg',
        color1: Color.fromARGB(255, 222, 200, 6),
        color2: Color.fromARGB(250, 102, 209, 114),
        color3: Color.fromARGB(255, 122, 120, 120),
        color4: Color.fromARGB(186, 68, 208, 213),
        enstrumanNameMusic: 'Matrix Electro-Guitar',
        enstrumanfileMusicUrl: 'elektro.mp3',
      ),
      MusicPage(
        imageMusic1: 'images/akordiyon1.jpg',
        color1: Color.fromARGB(255, 222, 200, 6),
        color2: Color.fromARGB(255, 195, 77, 77),
        color3: Color.fromARGB(255, 84, 71, 71),
        color4: Color.fromARGB(119, 144, 36, 138),
        enstrumanNameMusic: 'Red Devil Chromatic Akordeon',
        enstrumanfileMusicUrl: 'akordiyon.mp3',
      ),
      MusicPage(
        imageMusic1: 'images/saksafon3.jpeg',
        color1: Color.fromARGB(255, 222, 200, 6),
        color2: Color.fromARGB(255, 229, 186, 57),
        color3: Color.fromARGB(255, 84, 71, 71),
        color4: Color.fromARGB(255, 46, 229, 202),
        enstrumanNameMusic: 'Gold-Plated Elto Saxophone',
        enstrumanfileMusicUrl: 'saksafon.mp3',
      ),
      MusicPage(
        imageMusic1: 'images/gitar3.jpg',
        color1: Color.fromARGB(255, 222, 200, 6),
        color2: Color.fromARGB(255, 208, 156, 207),
        color3: Color.fromARGB(255, 84, 71, 71),
        color4: Color.fromARGB(255, 222, 200, 6),
        enstrumanNameMusic: 'Imperial Acoustic Guitar',
        enstrumanfileMusicUrl: 'gitar.mp3',
      ),
      MusicPage(
        imageMusic1: 'images/bateri2.jpg',
        color1: Color.fromARGB(255, 222, 200, 6),
        color2: Color.fromARGB(255, 24, 178, 229),
        color3: Color.fromARGB(255, 84, 71, 71),
        color4: Color.fromARGB(255, 11, 45, 126),
        enstrumanNameMusic: 'Blue Clouds Acoustic Drum',
        enstrumanfileMusicUrl: 'bateri.mp3',
      ),
      MusicPage(
        imageMusic1: 'images/keman1.jpeg',
        color1: Color.fromARGB(202, 40, 110, 39),
        color2: Color.fromARGB(199, 240, 119, 32),
        color3: Color.fromARGB(255, 84, 71, 71),
        color4: Color.fromARGB(255, 222, 200, 6),
        enstrumanNameMusic: 'Swan Violin',
        enstrumanfileMusicUrl: 'violin.mp3',
      ),
    ];
  }
}
