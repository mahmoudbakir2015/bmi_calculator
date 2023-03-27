import 'package:flutter/material.dart';

Widget buildWghtAgeCard({
  required String text,
  required tagAdd,
  required tagSub,
  required int num,
  required Function() add,
  required Function() sub,
}) {
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          20,
        ),
        color: Colors.grey,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$text",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          Text(
            "$num",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                heroTag: tagSub,
                mini: true,
                child: Icon(
                  Icons.remove,
                ),
                onPressed: sub,
              ),
              SizedBox(
                width: 30,
              ),
              FloatingActionButton(
                heroTag: tagAdd,
                mini: true,
                child: Icon(
                  Icons.add,
                ),
                onPressed: add,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
