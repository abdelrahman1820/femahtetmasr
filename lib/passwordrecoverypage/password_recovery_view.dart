import 'package:femahatetmasrapp/passwordrecoverypage/widgets/password_recovery_body.dart';
import 'package:flutter/material.dart';

class PassWordRecoveryView extends StatelessWidget {
  const PassWordRecoveryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: PasswordRecoveryBody(),
    );
  }
}
