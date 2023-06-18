import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class graphic extends StatefulWidget {
  const graphic({Key? key}) : super(key: key);

  @override
  State<graphic> createState() => _graphicState();
}

final gradientList = <List<Color>>[
  [
    Color.fromRGBO(223, 250, 92, 1),
    Color.fromRGBO(129, 250, 112, 1),
  ],
  [
    Color.fromRGBO(129, 182, 205, 1),
    Color.fromRGBO(91, 253, 199, 1),
  ],
  [
    Color.fromRGBO(175, 63, 62, 1.0),
    Color.fromRGBO(254, 154, 92, 1),
  ]
];

class _graphicState extends State<graphic> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          AppBar(
            backgroundColor: Colors.black,
            elevation: 10,
            title: Text(
              "sales rates of products",
              style: TextStyle(fontFamily: 'CoveredByYourGrace', fontSize: 26),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: PieChart(
                dataMap: instrument,
                animationDuration: Duration(seconds: 4),
                chartLegendSpacing: 30,
                initialAngleInDegree: 0,
                chartType: ChartType.disc,
                gradientList: gradientList,
                emptyColorGradient: [
                  Color(0xff6c5ce7),
                  Colors.blue,
                ],
                legendOptions: LegendOptions(
                  showLegends: true,
                  legendTextStyle: TextStyle(
                      fontFamily: "CoveredByYourGrace",
                      fontSize: 20,
                      decoration: TextDecoration.none,
                      color: Colors.black,
                      fontWeight: FontWeight.normal),
                  legendPosition: LegendPosition.bottom,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Map<String, double> instrument = {
  'blown': 50,
  'wired': 30,
  'keyed': 10,
  'percussion': 5,
};
