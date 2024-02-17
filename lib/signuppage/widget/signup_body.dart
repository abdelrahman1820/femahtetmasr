import 'package:femahatetmasrapp/signuppage/widget/check-box_row.dart';
import 'package:femahatetmasrapp/utils/custom_action_button.dart';
import 'package:femahatetmasrapp/utils/custom_textfeild.dart';
import 'package:flutter/material.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    TextEditingController nameSignupController = TextEditingController();
    TextEditingController phoneSignupController = TextEditingController();
    TextEditingController emailSignupController = TextEditingController();
    TextEditingController passwordSignupController = TextEditingController();
    TextEditingController confirmPasswordSignupController =
        TextEditingController();
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.06),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height * 0.08,
          ),
          const Text(
            "Create new\nyour account",
            style: TextStyle(
                color: Color(0xff00343D),
                fontSize: 30,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          const Text(
            "Experience the world at your fingertips with\nour ticket booking mobile app!",
            style: TextStyle(
                color: Color(0xffB7864B),
                fontSize: 15,
                fontWeight: FontWeight.w700),
          ),
          CustomTextFeild(
              label: "Full Name",
              hint: "Enter your name",
              icon: Icons.person_2_outlined,
              onChanged: (value) {},
              controller: nameSignupController),
          CustomTextFeild(
              label: "Phone Number",
              hint: "Enter your phone number",
              icon: Icons.phone_outlined,
              onChanged: (value) {},
              controller: phoneSignupController),
          CustomTextFeild(
              label: "Email",
              hint: "Enter your email",
              icon: Icons.email_outlined,
              onChanged: (value) {},
              controller: emailSignupController),
          CustomTextFeild(
              label: "Password",
              hint: "Enter your password",
              icon: Icons.remove_red_eye_outlined,
              onChanged: (value) {},
              controller: passwordSignupController),
          CustomTextFeild(
              label: "Confirm Password",
              hint: "Confirm Password",
              icon: Icons.lock_outline,
              onChanged: (value) {},
              controller: confirmPasswordSignupController),
          CheckBoxRow(
            checkbox: false,
            onchanged: (bool) {
              print(bool);
            },
            text: 'By creating an account you agree to our\n',
            text2: 'terms of services and privacy policy.',
          ),
          SizedBox(
            height: height * 0.05,
          ),
          CustomActionButton(centertitle: "Sign Up", onTap: () {})
        ],
      ),
    ));
  }
}
