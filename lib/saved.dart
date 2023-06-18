import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/main.dart';

class saved extends StatelessWidget {
  const saved({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              IconButton(
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                icon: const Icon(
                  Icons.home,
                  size: 30,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 180,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(27.0),
              child: Text(
                "thank you, we will contact you as soon as possible",
                style:
                    TextStyle(fontSize: 37, fontFamily: "CoveredByYourGrace"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
