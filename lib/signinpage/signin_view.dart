import 'package:femahatetmasrapp/signinpage/widgets/signin_body.dart';
import 'package:flutter/material.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SigninBody(),
    );
  }
}
