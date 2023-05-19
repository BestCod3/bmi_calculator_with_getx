import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  BottomBar({Key? key, required this.text, required this.onTap});
  String text;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 33),
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xffFF0F65),
              borderRadius: BorderRadius.circular(10)),
          height: MediaQuery.of(context).size.height * 0.09,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
