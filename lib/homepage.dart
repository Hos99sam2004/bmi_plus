import 'package:bmi_plus/colors.dart';
import 'package:bmi_plus/control.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(

      //   title: Text("BMI_PLUS",style: TextStyle(fontSize: 30,color:Colors.deepOrangeAccent ),),
      // ),
      drawer: Drawer(),

      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
        title: Text(
          "BMI_PLUS",
          style:
              TextStyle(fontSize: 30, color: Color.fromARGB(255, 89, 194, 243)),
        ),
        // backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Expanded(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: kBlue),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ctrl(ISMALE: true),
                        ));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Male",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ctrl(ISMALE: true),
                              ));
                        },
                        icon: Icon(Icons.male),
                        color: Colors.white,
                        iconSize: 60,
                      ),
                      SizedBox(
                        height: 16,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: kRed),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ctrl(ISMALE: false),
                        ));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Female",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ctrl(ISMALE: false),
                              ));
                        },
                        icon: Icon(Icons.female),
                        color: Colors.white,
                        iconSize: 60,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
