import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  final bool isMale;
  final double? hight;
  final int age;
  final double weight;
  final num result;
  const BmiResultScreen(
      // ignore: non_constant_identifier_names
      {super.key,
      required this.isMale,
      required this.age,
      required this.hight,
      required this.weight,
      required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0A0E21),
      appBar: AppBar(
        backgroundColor: const Color(0xff0A0E21),
        title: const Text('BMI RESULT'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Gender :${isMale ? 'Male' : 'Femail'}",
            style: const TextStyle(
                color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
          ),
          Text(
            'Height : ${hight!.round()}',
            style: const TextStyle(
                color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
          ),
          Text(
            'Weight : ${weight.round()}',
            style: const TextStyle(
                color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
          ),
          Text(
            'Age : $age',
            style: const TextStyle(
                color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
          ),
          const Divider(
              color: Color(0xffEB1555),
              height: 50,
              thickness: 1,
              endIndent: 150,
              indent: 150),
          Text(
            'Result : ${result.round()}',
            style: const TextStyle(
                color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
          )
        ]),
      ),
    );
  }
}
