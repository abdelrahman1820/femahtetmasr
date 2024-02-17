import 'package:flutter/material.dart';

class GoldContainer extends StatelessWidget {
  const GoldContainer({
    super.key,
    required this.width,
    required this.height,
    required this.widget,
  });

  final num width;
  final num height;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
          vertical: height * 0.013,
          horizontal: width * 0.023,
        ),
        // width: width * 0.105,
        // height: height * 0.051,
        decoration: BoxDecoration(
          color: const Color(0xffB7864B),
          borderRadius: BorderRadius.circular(8),
        ),
        child: widget);
  }
}
