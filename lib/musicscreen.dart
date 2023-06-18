import 'dart:io';
import 'package:flutter/services.dart';
import 'dart:ui';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'package:sqflite/sqflite.dart';
import 'package:just_audio/just_audio.dart';
import 'package:flutter/material.dart';
import 'models/musicmodel.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class musicscreen extends StatefulWidget {
  final int index;
  const musicscreen({super.key, required this.index});

  @override
  State<musicscreen> createState() => _musicscreenState();
}

class dataBase {
  static const databaseName = 'musicDatabase.db';
  static const databaseVersion = 1;
  static const tableName = 'musicTable';

  dataBase._privateConstructor();
  static final dataBase instance = dataBase._privateConstructor();

  static Database? _database;
  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    Directory document = await getApplicationDocumentsDirectory();
    String path = join(document.path, databaseName);
    return await openDatabase(path,
        version: databaseVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute(
        '''CREATE TABLE $tableName(id INTEGER PRIMARY KEY, name TEXT, filePath TEXT)''');
  }

  Future<int> insert(Map<String, dynamic> row) async {
    Database db = await instance.database;
    return await db.insert(tableName, row);
  }

  Future<List<Map<String, dynamic>>> queryAll() async {
    Database db = await instance.database;
    return await db.query(tableName);
  }

  Future<String?> downloadMusic(String url, String fileName) async {
    try {
      firebase_storage.FirebaseStorage storage =
          firebase_storage.FirebaseStorage.instance;

      String downloadUrl = await storage.ref(url).getDownloadURL();
      var request = await http.Client().get(Uri.parse(downloadUrl));
      var bytes = request.bodyBytes;
      String dir = (await getApplicationDocumentsDirectory()).path;
      File file = File('$dir/$fileName');
      await file.writeAsBytes(bytes);
      return file.path;
    } catch (e) {
      print("Hata: $e");
      return null;
    }
  }
}

class _musicscreenState extends State<musicscreen> {
  List<MusicPage> musicListesi = MusicPage.musicPageList();
  late MusicPage music;
  final player = AudioPlayer();
  @override
  void initState() {
    super.initState();
    music = musicListesi[widget.index];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 187, 187, 187),
      body: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
              child: Image.asset(music.imageMusic1),
            ),
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
          Center(
            child: Material(
              borderRadius: BorderRadius.circular(25),
              elevation: 10,
              color: music.color1,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      music.color2,
                      music.color3,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 250,
                width: 400,
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 85),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.popUntil(
                                  context, (route) => route.isFirst);
                            },
                            icon: const Icon(
                              Icons.home,
                              size: 25,
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 53,
                            child: CircleAvatar(
                              radius: 50,
                              backgroundColor: music.color4,
                              child: CircleAvatar(
                                radius: 45,
                                backgroundImage: AssetImage(music.imageMusic1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      music.enstrumanNameMusic,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 254, 248, 248),
                        fontFamily: 'CoveredByYourGrace',
                        fontSize: 17,
                      ),
                    ),
                    const Divider(
                      thickness: 0.3,
                      color: Colors.black,
                      indent: 50,
                      endIndent: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () async {
                            try {
                              var db = dataBase.instance;
                              var res = await db.queryAll();
                              var filePath;
                              for (var file in res) {
                                if (file['name'] == music.enstrumanNameMusic) {
                                  filePath = file['filePath'];
                                  break;
                                }
                              }
                              if (filePath == null) {
                                filePath = await db.downloadMusic(
                                    music.enstrumanfileMusicUrl,
                                    'music_${music.enstrumanNameMusic}.mp3');
                                if (filePath != null) {
                                  int id = await db.insert({
                                    'name': music.enstrumanNameMusic,
                                    'filePath': filePath,
                                  });
                                  print('Veritabanına kaydedildi: $id');
                                }
                              }
                              if (filePath != null) {
                                await player.setFilePath(filePath);
                                player.play();
                              } else {
                                print("Dosya indirilemedi veya bulunamadı.");
                              }
                            } catch (e) {
                              print(e);
                            }
                          },
                          icon: Icon(Icons.play_arrow),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
