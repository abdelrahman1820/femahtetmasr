import 'package:femahatetmasrapp/passwordrecoverypage/widgets/recovery_app_bar.dart';
import 'package:femahatetmasrapp/utils/custom_action_button.dart';
import 'package:femahatetmasrapp/utils/custom_textfeild.dart';
import 'package:flutter/material.dart';

class PageBuilder3 extends StatelessWidget {
  const PageBuilder3({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    TextEditingController newPasswordControler = TextEditingController();
    TextEditingController confirmNewPasswordControler = TextEditingController();
    return Column(
      children: [
        RecoveryAppBar(
          title: 'OTP Verification',
          onTap: () {
            print("object");
          },
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Image.asset(
          "images/recoverypassword3.png",
          fit: BoxFit.cover,
          width: 330,
          height: 306,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        CustomTextFeild(
          label: "New Password",
          hint: "Enter your password",
          icon: Icons.remove_red_eye_outlined,
          onChanged: (value) {
            print(value);
          },
          controller: newPasswordControler,
        ),
        CustomTextFeild(
          label: 'Confirm New Password',
          hint: 'Confirm New Password',
          icon: Icons.lock_outline,
          onChanged: (value) {},
          controller: confirmNewPasswordControler,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
        ),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "At least 8 characters, with uppercase and\nlowercase letters", // corrected character to characters
            style: TextStyle(color: Color(0xffB7864B), fontSize: 13),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        CustomActionButton(
          controller: controller,
          centertitle: 'Save Now',
          onTap: () {
            print("SSSS");
          },
        ),
      ],
    );
  }
}
