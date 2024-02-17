import 'package:flutter/material.dart';

class ProfileCircleImage extends StatelessWidget {
  const ProfileCircleImage({
    super.key,
    required this.width,
    required this.height,
  });

  final num width;
  final num height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          width: width * 0.6, // Adjust the size as needed
          height: height * 0.17,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Color(0xff00343D), // Red border color
              width: 1.5, // Border width
            ),
          ),
          child: const CircleAvatar(
            backgroundImage: AssetImage('images/person.png'),
          ),
        ),
        Positioned(
          bottom: height * 0.006,
          right: width * 0.16,
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                color: Color(0xff00343D),
                shape: BoxShape.circle),
            child: const Icon(
              Icons.edit,
              color: Colors.white,
              size: 13,
            ),
          ),
        )
      ],
    );
  }
}
