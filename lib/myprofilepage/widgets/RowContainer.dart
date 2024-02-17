import 'package:femahatetmasrapp/utils/gold_container.dart';
import 'package:flutter/material.dart';

class RowContainer extends StatefulWidget {
  const RowContainer(
      {super.key,
      required this.height,
      required this.width,
      required this.text,
      this.isNotification = false, required this.imagePath});

  final num height;
  final num width;
  final String text;
  final bool isNotification;
  final String imagePath;

  @override
  State<RowContainer> createState() => _RowContainerState();
}

class _RowContainerState extends State<RowContainer> {
  bool status = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: widget.height * 0.01, horizontal: widget.width * 0.02),
      margin: EdgeInsets.only(bottom: widget.height * 0.02),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(11),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06), // 6% opacity black
            offset: const Offset(5, 11),
            blurRadius: 30,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        children: [
          GoldContainer(
              width: widget.width,
              height: widget.height,
              widget: Image.asset(
               widget.imagePath,
                width: 15,
                height: 15,
              )),
          Padding(
            padding: EdgeInsets.only(left: widget.width * 0.05),
            child: Text(
              widget.text,
              style: const TextStyle(
                  color: Color(0xff00343D),
                  fontWeight: FontWeight.w700,
                  fontSize: 13),
            ),
          ),
          const Spacer(),
          widget.isNotification
              ? Transform.scale(
                  alignment: Alignment.centerRight,
                  scale: 0.4,
                  child: Switch(
                    activeTrackColor: Color(0xff00343D),
                    value: status,
                    onChanged: (value) {
                      setState(() {
                        status = value;
                      });
                    },
                  ),
                )
              : const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Color(0xffAAAAAA),
                  size: 20,
                )
        ],
      ),
    );
  }
}
