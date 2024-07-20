import 'dart:math';

import 'package:bmi_plus/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class resultscrean extends StatelessWidget {
  int height;
  int weight;
  bool ISMALE;

  resultscrean(
      {super.key,
      required this.height,
      required this.weight,
      required this.ISMALE});

  @override
  Widget build(BuildContext context) {
    double BMICalc = weight / pow(height / 100, 2);

    String result = '';
    switch (BMICalc) {
      case < 16:
        result = "Severe thinnes";
        break;
      case >= 16 && < 25:
        result = "Normal";
        break;
      case >= 25 && < 30:
        result = "OverWeight";
        break;
      case >= 30:
        result = "obese";
        break;
      default:
    }

    return Scaffold(
      backgroundColor: ISMALE ? kBlue : kRed,
      body: Expanded(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  "Your BMI Is : ",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "  ${BMICalc.toStringAsFixed(1)}",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  result,
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_circle_left,
                      color: Colors.white,
                      size: 50,
                    ))
              ],
            ),
          ],
        ),
      )),
    );
  }
}
