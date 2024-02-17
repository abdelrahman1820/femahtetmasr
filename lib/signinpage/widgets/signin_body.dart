import 'package:femahatetmasrapp/signinpage/widgets/company_container.dart';
import 'package:femahatetmasrapp/signuppage/signup_view.dart';
import 'package:femahatetmasrapp/utils/custom_action_button.dart';
import 'package:femahatetmasrapp/utils/custom_textfeild.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SigninBody extends StatelessWidget {
  const SigninBody({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    TextEditingController nameSigninController = TextEditingController();
    TextEditingController passwordSigninController = TextEditingController();

    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.06),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.08,
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                "images/logosignin.png",
                width: width * 0.6,
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            const Text(
              "Sign in \nyour account",
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xff00343D),
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: height * 0.019,
            ),
            const Text(
              "Experience the world at your fingertips with\nour ticket booking mobile app!",
              style: TextStyle(
                  color: Color(0xffB7864B),
                  fontSize: 17,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: height * 0.009,
            ),
            CustomTextFeild(
                label: "Name",
                hint: "Enter your name",
                icon: Icons.mail_outline_outlined,
                onChanged: (value) {
                  print(value);
                },
                controller: nameSigninController),
            SizedBox(
              height: height * 0.02,
            ),
            CustomTextFeild(
                label: "Password",
                hint: "Enter your password",
                icon: Icons.remove_red_eye_outlined,
                onChanged: (value) {
                  print(value);
                },
                controller: passwordSigninController),
            SizedBox(
              height: height * 0.009,
            ),
            const Text(
              "Forgot Password?",
              style: TextStyle(fontSize: 13, color: Color(0xffB7864B)),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            CustomActionButton(centertitle: "Sign In", onTap: () {}),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                const Text(
                  "Or sign in with",
                  style: TextStyle(color: Color(0xffB7864B), fontSize: 13),
                ),
                const Spacer(),
                CompanyContainer(
                  height: height,
                  width: width,
                  icon: FontAwesomeIcons.apple,
                  onTap: () {},
                ),
                CompanyContainer(
                  height: height,
                  width: width,
                  icon: FontAwesomeIcons.google,
                  onTap: () {},
                ),
                CompanyContainer(
                  height: height,
                  width: width,
                  icon: FontAwesomeIcons.facebookF,
                  onTap: () {},
                )
              ],
            ),
            SizedBox(
              height: height * 0.035,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don’t have an account? ',
                  style: TextStyle(color: Color(0xffB7864B), fontSize: 14),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpView()));
                  },
                  child: const Text(' Sign Up',
                      style: TextStyle(color: Color(0xff00343D), fontSize: 14)),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
