import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTBContainer extends StatelessWidget {
  const OTBContainer({
    super.key,
    required this.first,
    required this.last,
  });
  final bool first, last;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
      child: SizedBox(
        height: 55,
        child: AspectRatio(
          aspectRatio: 2 / 3,
          child: TextFormField(
            autofocus: false,
            readOnly: false,
            showCursor: true,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14, color: Color(0xff00343D)),
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
            onChanged: (value) {
              if (value.length == 1 && last == false) {
                FocusScope.of(context).nextFocus();
              }
              if (value.length == 1 && first == false) {
                FocusScope.of(context).previousFocus();
              }
            },
            decoration: InputDecoration(
                counter: const Offstage(),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.0),
                  borderSide: const BorderSide(
                    color: Color(0xffAAAAAA),
                    width: 1.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.0),
                  borderSide: const BorderSide(
                    color: Color(0xffAAAAAA),
                    width: 1.0,
                  ),
                )
                // Adjust content padding as needed
                ),
          ),
        ),
      ),
    );
  }
}
