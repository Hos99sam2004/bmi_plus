import 'package:bmi_plus/homepage.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(BMi_plus());
}

class BMi_plus extends StatelessWidget {
  const BMi_plus({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: homepage());
  }
}
