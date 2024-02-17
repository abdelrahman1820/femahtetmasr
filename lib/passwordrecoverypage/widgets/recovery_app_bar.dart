import 'package:flutter/material.dart';

class RecoveryAppBar extends StatelessWidget {
  const RecoveryAppBar({
    super.key, required this.title,required this.onTap,
  });
  final String title;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap:onTap ,
          child: Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              color: const Color(0xffB7864B),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.chevron_left_rounded,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.05,
        ),
         Text(
         title,
          style: const TextStyle(
              fontSize: 16,
              color: Color(0xff00343D),
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}