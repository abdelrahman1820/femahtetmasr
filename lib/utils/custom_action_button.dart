import 'package:flutter/material.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton(
      {super.key,
      this.controller,
      required this.centertitle,
      required this.onTap,
      this.icon = const SizedBox()});

  final PageController? controller;
  final String centertitle;
  final void Function() onTap;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.07,
        decoration: BoxDecoration(
            color: const Color(0xff00343D),
            borderRadius: BorderRadius.circular(11)),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            Text(
              centertitle,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        )),
      ),
    );
  }
}
