import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lottie/lottie.dart';
import 'package:rive/rive.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
            height: 225,
          ),
          Center(
            child: Lottie.network(
                "https://assets1.lottiefiles.com/packages/lf20_llbjwp92qL.json"),
          ),
        ],
      ),
    );
  }
}
