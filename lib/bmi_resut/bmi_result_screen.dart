import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {
  final String type;
  final double result;
  final int age;
  const BMIResult({
    Key? key,
    required this.type,
    required this.result,
    required this.age,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "BMI Result",
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Container(
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
              color: Colors.grey,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "GENDER : $type ",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      "RESULT : ${result.round()}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      "AGE : $age ",
                      style:const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
