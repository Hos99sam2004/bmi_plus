import 'package:bmi_plus/colors.dart';
import 'package:bmi_plus/result.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ctrl extends StatefulWidget {
  bool ISMALE;
  ctrl({super.key, required this.ISMALE});

  @override
  State<ctrl> createState() => _ctrlState();
}

class _ctrlState extends State<ctrl> {
  int Weight = 25;
  int height = 125;

  @override
  Widget build(BuildContext context) {
    Color kMaincolor = widget.ISMALE ? kBlue : kRed;
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                        ),
                        child: Row(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.arrow_back_ios_new,
                                size: 50,
                                color: kMaincolor,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            Text(
                              "BMI",
                              style: TextStyle(fontSize: 40, color: kMaincolor),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              widget.ISMALE ? "Male" : "Female",
                              style: TextStyle(fontSize: 40),
                            ),
                            Icon(
                              widget.ISMALE ? Icons.male : Icons.female,
                              size: 120,
                              color: kMaincolor,
                            ),
                            Text(
                              " Weight (KG) ",
                              style: TextStyle(fontSize: 40),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          physics: BouncingScrollPhysics(),
                          itemCount: 30,
                          itemBuilder: (context, index) {
                            int i = (index + 5) * 5;
                            return Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    Weight = i;
                                  });
                                },
                                child: Center(
                                  child: Text(
                                    "$i",
                                    style: TextStyle(
                                        fontSize: Weight == i ? 50 : 30,
                                        color: Weight == i
                                            ? kMaincolor
                                            : Colors.black),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(color: kMaincolor),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Height \n (cm)",
                          style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 42,
                        ),
                        Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            physics: BouncingScrollPhysics(),
                            itemCount: 30,
                            itemBuilder: (context, index) {
                              int i = (index + 25) * 5;
                              return Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      height = i;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                        color: height == i
                                            ? Colors.white
                                            : Colors.blueAccent,
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    child: Center(
                                      child: Text(
                                        "$i",
                                        style: TextStyle(
                                            fontSize: 30,
                                            color: height == i
                                                ? kMaincolor
                                                : Colors.amberAccent),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 120,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: KYellow,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 14)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return resultscrean(
                          height: height,
                          weight: Weight,
                          ISMALE: widget.ISMALE);
                    },
                  ),
                );
              },
              child: Row(
                children: [
                  Text(
                    "Calc".toUpperCase(),
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
