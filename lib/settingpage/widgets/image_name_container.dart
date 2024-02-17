import 'package:flutter/material.dart';

class ImageNameContainer extends StatelessWidget {
  const ImageNameContainer({
    super.key,
    required this.height,
    required this.width,
  });

  final num height;
  final num width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: height * 0.01, bottom: height * 0.01, right: width * 0.04),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.06),
            offset: Offset(7, 15),
            blurRadius: 40,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            width: width * 0.3, // Adjust the size as needed
            height: height * 0.1,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xff00343D), // Red border color
                width: 1.5, // Border width
              ),
            ),
            child: const CircleAvatar(
              backgroundImage: AssetImage('images/person.png'),
            ),
          ),
          const Text(
            "Mohammed Albdalla",
            style: TextStyle(
                color: Color(0xff00343D),
                fontSize: 13,
                fontWeight: FontWeight.w700),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(6),
            decoration: const BoxDecoration(
                color: Color(0xff00343D), shape: BoxShape.circle),
            child: Image.asset(
              "images/pen.png",
              width: 12,
              height: 12,
            ),
          )
        ],
      ),
    );
  }
}
