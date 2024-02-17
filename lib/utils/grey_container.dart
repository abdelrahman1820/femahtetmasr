import 'package:flutter/material.dart';

class GreyContainer extends StatelessWidget {
  const GreyContainer({
    super.key,
    required this.width,
    required this.height,
    required this.imagePath,
  });

  final num width;
  final num height;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
          vertical: height * 0.013,
          horizontal: width * 0.023,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xffAAAAAA), width: 1.5),
        ),
        child: Image.asset(
          imagePath,
          width: 15,
          height: 15,
          
        ));
  }
}
