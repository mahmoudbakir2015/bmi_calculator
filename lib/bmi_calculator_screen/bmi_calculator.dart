import 'dart:math';

import 'package:bmi_calculator/bmi_resut/bmi_result_screen.dart';
import 'package:flutter/material.dart';

import 'componnents/gender.dart';
import 'componnents/weight_age_info_card.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  double height = 180;
  bool isMale = true;
  int weight = 50;
  int age = 16;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        titleSpacing: 20,
        title: const Text(
          "BMI Calculator",
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(
                20,
              ),
              child: Row(
                children: [
                  buildGenderCard(
                    color: isMale ? Colors.blue : Colors.grey,
                    iconData: Icons.male,
                    type: "MALE",
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    isMale: isMale,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  buildGenderCard(
                    color: !isMale ? Colors.blue : Colors.grey,
                    iconData: Icons.female,
                    type: "FEMALE",
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                    isMale: isMale,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.symmetric(
                horizontal: 20,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "HEIGHT",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "${height.round()}",
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          "CM",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: height,
                      max: 210,
                      min: 80,
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(
                20,
              ),
              child: Row(
                children: [
                  buildWghtAgeCard(
                    text: 'WEIGHT',
                    num: weight,
                    add: () {
                      setState(() {
                        weight++;
                      });
                    },
                    sub: () {
                      if (weight > 0) {
                        setState(() {
                          weight--;
                        });
                      }
                    },
                    tagAdd: 'weightAdd',
                    tagSub: 'weightSub',
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  buildWghtAgeCard(
                    text: 'AGE',
                    num: age,
                    add: () {
                      setState(() {
                        age++;
                      });
                    },
                    sub: () {
                      if (age > 0) {
                        setState(() {
                          age--;
                        });
                      }
                    },
                    tagAdd: 'ageAdd',
                    tagSub: 'ageSub',
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
            ),
            width: double.infinity,
            color: Colors.red,
            child: MaterialButton(
              child: const Text(
                "Calculate",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                double result = weight / pow(height / 100, 2);

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => BMIResult(
                      type: isMale ? 'Male' : 'Female',
                      result: result,
                      age: age,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
