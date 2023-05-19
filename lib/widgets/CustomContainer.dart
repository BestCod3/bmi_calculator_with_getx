import 'package:flutter/material.dart';

Color activeColor = Colors.teal;
Color inactiveColor = Color.fromRGBO(10, 4, 22, 0.941);

class CustomContainer extends StatelessWidget {
  CustomContainer(
      {super.key,
      required this.icon,
      required this.text,
      required this.onTap,
      required this.tus});
  final IconData icon;
  final String text;
  final Function()? onTap;
  final Color tus;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: tus,
          borderRadius: BorderRadius.circular(10),
        ),
        width: 150,
        height: 177,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Icon(
                icon,
                color: Color(0xffFFFFFF),
                size: 90,
              ),
              Text(
                text.toUpperCase(),
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
