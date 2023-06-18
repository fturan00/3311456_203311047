import 'package:flutter/material.dart';

class contacts extends StatelessWidget {
  const contacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          width: double.infinity,
          height: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/contact1.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 200,
          child: Column(
            children: [
              SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back_rounded,
                          size: 27,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Contact us",
                        style: TextStyle(
                            fontSize: 37, fontFamily: "CoveredByYourGrace"),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Icon(Icons.phone_iphone_sharp, size: 30),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "+441703650036",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        fontFamily: "Galdeano"),
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Icon(Icons.mail_sharp, size: 28),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "contact@utopiamusic.com",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        fontFamily: "Galdeano"),
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Icon(Icons.gps_fixed, size: 28),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                      child: Text(
                    "3 W High St, Kirkintilloch, Glasgow G66 1PN, United Kingdom",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        fontFamily: "Galdeano"),
                  ))
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 153,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/map.jpeg"), fit: BoxFit.fitWidth),
          ),
        ),
      ],
    ));
  }
}
