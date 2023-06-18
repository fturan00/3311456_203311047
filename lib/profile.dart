import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

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
            ],
          ),
          SizedBox(
            height: 225,
          ),
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 300),
                  child: IconButton(
                    onPressed: () {
                      Navigator.popUntil(context, (route) => route.isFirst);
                    },
                    icon: const Icon(
                      Icons.home,
                      size: 30,
                    ),
                  ),
                ),
                Lottie.network(
                    "https://assets1.lottiefiles.com/packages/lf20_llbjwp92qL.json"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
