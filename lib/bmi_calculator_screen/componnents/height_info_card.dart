import 'package:flutter/material.dart';

Widget buildHeightInfoCard({
  double height = 180,
}) {
  return Container(
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
              "$height",
              style: TextStyle(
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
          onChanged: (value) {},
        ),
      ],
    ),
  );
}
