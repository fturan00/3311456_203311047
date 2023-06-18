
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/saved.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class userinfo extends StatefulWidget {
  const userinfo({Key? key}) : super(key: key);

  @override
  State<userinfo> createState() => _userinfoState();
}

class _userinfoState extends State<userinfo> {
  final _firestore = FirebaseFirestore.instance;
  TextEditingController nameControl = TextEditingController();
  TextEditingController adressControl = TextEditingController();
  TextEditingController callControl = TextEditingController();
  TextEditingController emailControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    CollectionReference dataReference = _firestore.collection('buyinfo');

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 5,
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_rounded,
                  size: 30,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                  child: Text(
                "Fill in your information and send it to us, we will contact you as soon as possible.",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    fontFamily: "CoveredByYourGrace"),
              ))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Form(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: nameControl,
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: "Name-Surname",
                    labelStyle: TextStyle(
                      color: Colors.black45,
                      fontFamily: 'CoveredByYourGrace',
                      fontSize: 22,
                    ),
                    prefixIcon: Icon(
                      Icons.location_history,
                      size: 27,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: adressControl,
                  decoration: InputDecoration(
                    labelText: "Adress",
                    labelStyle: TextStyle(
                      color: Colors.black45,
                      fontFamily: 'CoveredByYourGrace',
                      fontSize: 22,
                    ),
                    prefixIcon: Icon(
                      Icons.location_city,
                      size: 27,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: callControl,
                  keyboardType: TextInputType.number,
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: "Call Number",
                    labelStyle: TextStyle(
                      color: Colors.black45,
                      fontFamily: 'CoveredByYourGrace',
                      fontSize: 22,
                    ),
                    prefixIcon: Icon(
                      Icons.phone_iphone,
                      color: Colors.black,
                      size: 27,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: emailControl,
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(
                      color: Colors.black45,
                      fontFamily: 'CoveredByYourGrace',
                      fontSize: 22,
                    ),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.black,
                      size: 26,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ],
          )),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Container(
                height: 250,
                width: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/solanahtar.png'),
                  ),
                ),
              ),
              ElevatedButton.icon(
                onPressed: () async {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => saved())));
                  print(nameControl.text);

                  Map<String, dynamic> data = {
                    'name': nameControl.text,
                    'adress': adressControl.text,
                    'call number': callControl.text,
                    'email': emailControl.text
                  };

                  await dataReference.doc(nameControl.text).set(data);
                },
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.done,
                    size: 34,
                    color: Colors.black,
                  ),
                ),
                label: Text(
                  "Save",
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'CoveredByYourGrace',
                      color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(246, 95, 182, 236),
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(12)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(
                width: 190,
              ),
            ],
          ),
          SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
