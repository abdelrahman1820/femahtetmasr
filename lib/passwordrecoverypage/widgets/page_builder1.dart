import 'package:femahatetmasrapp/passwordrecoverypage/widgets/recovery_app_bar.dart';
import 'package:femahatetmasrapp/utils/custom_action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Pagebulder1 extends StatelessWidget {
  const Pagebulder1({
    super.key,
    required this.controller,
  });
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    String val = "";
    GlobalKey<FormState> formkey = GlobalKey<FormState>();
    return Form(
      key: formkey,
      child: Column(
        children: [
          RecoveryAppBar(
            title: 'Password Recovery Code',
            onTap: () {},
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Image.asset(
            "images/recoverypassword1.png",
            fit: BoxFit.cover,
            width: 330,
            height: 306,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          const Text(
            "We will send a code to the phone number you registered to regain your password",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          TextFormField(
            style: const TextStyle(
                color: Color(0xffAAAAAA)), // Change color to black
            keyboardType: TextInputType.phone,
            onChanged: (value) {
              val = value;
            },
            showCursor: false,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a phone number';
              }
              return null; // Return null if the input is valid
            },
            inputFormatters: [
              NumberTextInputFormatter(),
            ],
            decoration: InputDecoration(
              suffixIcon: const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Icon(
                  Icons.check_circle,
                  color: Color(0xff05BF01),
                  size: 20,
                ),
              ),
              prefixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    "images/egyptflag.png",
                    width: 23,
                    height: 23,
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Color(0xffAAAAAA),
                  ),
                  const SizedBox(
                    width: 10,
                  )
                ],
              ),
              border: const UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Color(0xffAAAAAA)), // Default border color
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Color(0xffAAAAAA)), // Border color when focused
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Verification code sent to +88017********",
              textAlign: TextAlign.left,
              style: TextStyle(color: Color(0xffB7864B)),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          CustomActionButton(
            controller: controller,
            centertitle: "Send",
            onTap: () {
              if (formkey.currentState!.validate()) {
                controller.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut);
                print(val);
              } else {
                print("kkkkk");
              }
            },
          )
        ],
      ),
    );
  }
}

class NumberTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String newText = newValue.text.replaceAll(RegExp(r'[^0-9+]'), '');
    return newValue.copyWith(text: newText);
  }
}
