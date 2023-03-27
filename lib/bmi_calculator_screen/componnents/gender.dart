import 'package:flutter/material.dart';

Widget buildGenderCard({
  required String type,
  required IconData iconData,
  required bool isMale,
  required Function() onTap,
  required Color color,
}) {
  return Expanded(
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 50,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              type,
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
