import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CompanyContainer extends StatelessWidget {
  const CompanyContainer({
    super.key,
    required this.height,
    required this.width,
    required this.icon, required this.onTap,
  });

  final double height;
  final double width;
  final IconData icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        margin: EdgeInsets.only(left: width * 0.04),
        height: height * 0.055,
        width: width * 0.11,
        decoration: BoxDecoration(
            color: const Color(0xffF1F1F1),
            borderRadius: BorderRadius.circular(7)),
        child: Center(
          child: FaIcon(
            icon,
            size: 18,
            color: Color(0xffAAAAAA),
          ),
        ),
      ),
    );
  }
}