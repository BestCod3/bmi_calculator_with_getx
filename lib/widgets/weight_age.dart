import 'package:flutter/material.dart';

class WeightAgeContainer extends StatelessWidget {
  WeightAgeContainer(
      {super.key,
      required this.text,
      required this.number,
      required this.PressedMinus,
      required this.PressedPlus,
      required this.tag1,
      required this.tag2});
  final Function()? PressedMinus;
  final Function()? PressedPlus;
  final String text;
  final int number;
  final Object? tag1;
  final Object? tag2;

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 177,
      decoration: BoxDecoration(
        color: Color.fromRGBO(10, 4, 22, 0.941),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            text,
            style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontSize: 28,
                fontWeight: FontWeight.w500),
          ),
          Text(
            '$number',
            style: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.w500),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                backgroundColor: Color(0xff5C5B5B),
                heroTag: tag1,
                onPressed: PressedMinus,
                child: Icon(
                  Icons.remove,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              FloatingActionButton(
                backgroundColor: Color(0xff5C5B5B),
                heroTag: tag2,
                onPressed: PressedPlus,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
