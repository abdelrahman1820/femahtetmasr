import 'package:femahatetmasrapp/utils/gold_container.dart';
import 'package:femahatetmasrapp/utils/grey_container.dart';
import 'package:flutter/material.dart';

class AppBarForProfileAndSetting extends StatelessWidget {
  const AppBarForProfileAndSetting({
    super.key,
    required this.width,
    required this.height, required this.mainTitle, required this.greycontainerimage,
    
  });

  final num width;
  final num height;
  final String mainTitle,greycontainerimage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GoldContainer(
          width: width,
          height: height,
          widget: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 18,
            color: Colors.white,
          ),
        ),
         Text(
          mainTitle,
          style: const TextStyle(
              color: Color(0xff00343D),
              fontWeight: FontWeight.w700,
              fontSize: 18),
        ),
        GreyContainer(
          width: width,
          height: height,
          imagePath: greycontainerimage,
        )
      ],
    );
  }
}
