// ignore_for_file: file_names
import 'dart:math';

import 'package:bmi/result.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// ignore: non_constant_identifier_names
bool IsMale = true;
double hight = 0;
double weight = 50;
int age = 16;
int result = 0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: const Color(0xff0A0E21),
          appBar: AppBar(
            backgroundColor: const Color(0xff0A0E21),
            title: const Text('BMI CALCOLATOR'),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Expanded(
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          IsMale = true;
                        });
                      },
                      child: Container(
                        height: 165,
                        width: 165,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: IsMale
                                ? const Color(0xffEB1555)
                                : const Color(0xff111328)),
                        child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.male, color: Colors.white, size: 85),
                              SizedBox(height: 5),
                              Text(
                                'MALE',
                                style: TextStyle(
                                    color: Color(0xff8E8F98), fontSize: 15),
                              )
                            ]),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          IsMale = false;
                        });
                      },
                      child: Container(
                        height: 165,
                        width: 165,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: !IsMale
                                ? const Color(0xffEB1555)
                                : const Color(0xff111328)),
                        child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.female, color: Colors.white, size: 85),
                              SizedBox(height: 5),
                              Text(
                                'FEMALE',
                                style: TextStyle(
                                    color: Color(0xff8E8F98), fontSize: 15),
                              )
                            ]),
                      ),
                    ),
                  ),
                ]),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xff111328)),
                  width: double.infinity,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'HEIGHT',
                          style:
                              TextStyle(color: Color(0xff8E8F98), fontSize: 20),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${hight.round()}',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              height: 30,
                              child: const Text(
                                'CM',
                                style: TextStyle(
                                    color: Color(0xff8E8F98), fontSize: 11),
                              ),
                            )
                          ],
                        ),
                        Slider(
                          activeColor: const Color(0xffEB1555),
                          value: hight,
                          min: 0,
                          max: 200,
                          onChanged: (value) {
                            setState(() {
                              hight = value;
                            });
                          },
                        )
                      ]),
                ),
              )),
              Expanded(
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {});
                      },
                      child: Container(
                        height: 165,
                        width: 165,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xff111328)),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'WEIGHT',
                                style: TextStyle(
                                    color: Color(0xff8E8F98), fontSize: 18),
                              ),
                              Text(
                                '${weight.round()}',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    mini: true,
                                    // ignore: sort_child_properties_last
                                    child: const Icon(Icons.remove),
                                    backgroundColor: const Color(0xff4C4F5E),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    mini: true,
                                    // ignore: sort_child_properties_last
                                    child: const Icon(Icons.add),
                                    backgroundColor: const Color(0xff4C4F5E),
                                  )
                                ],
                              )
                            ]),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 165,
                      width: 165,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xff111328)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'AGE',
                              style: TextStyle(
                                  color: Color(0xff8E8F98), fontSize: 18),
                            ),
                            Text(
                              '$age',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  mini: true,
                                  // ignore: sort_child_properties_last
                                  child: const Icon(Icons.remove),
                                  backgroundColor: const Color(0xff4C4F5E),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  mini: true,
                                  // ignore: sort_child_properties_last
                                  child: const Icon(Icons.add),
                                  backgroundColor: const Color(0xff4C4F5E),
                                )
                              ],
                            )
                          ]),
                    ),
                  ),
                ]),
              )),
              // ignore: sized_box_for_whitespace
              Container(
                width: double.infinity,
                child: MaterialButton(
                    // ignore: sort_child_properties_last
                    child: const Text('Calculate',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.w500)),
                    onPressed: () {
                      double result = weight / pow(hight / 100, 2);

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BmiResultScreen(
                                  isMale: IsMale,
                                  age: age,
                                  hight: hight,
                                  weight: weight,
                                  result: result)));
                    },
                    color: const Color(0xffEB1555),
                    height: 65),
              )
            ],
          )),
    );
  }
}
