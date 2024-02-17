import 'package:flutter/material.dart';

class CheckBoxRow extends StatefulWidget {
  const CheckBoxRow(
      {super.key,
      required this.checkbox,
      required this.onchanged,
      required this.text,
      required this.text2});
  final bool checkbox;
  final void Function(bool?)? onchanged;
  final String text, text2;

  @override
  State<CheckBoxRow> createState() => _CheckBoxRowState();
}

class _CheckBoxRowState extends State<CheckBoxRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Checkbox(
            visualDensity: VisualDensity.compact,
            activeColor: const Color(0xffB7864B),
            checkColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            splashRadius: 5,
            value: widget.checkbox,
            side: const BorderSide(color: Color(0xffB7864B), width: 1),
            onChanged: widget.onchanged),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: widget.text,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffB7864B),
                ),
              ),
          
              TextSpan(
                text: widget.text2,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff00343D),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
