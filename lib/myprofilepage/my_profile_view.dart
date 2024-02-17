import 'package:femahatetmasrapp/myprofilepage/widgets/my_profile_body.dart';
import 'package:flutter/material.dart';

class MyProfileview extends StatelessWidget {
  const MyProfileview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: MyProfileBody(),
    );
  }
}
