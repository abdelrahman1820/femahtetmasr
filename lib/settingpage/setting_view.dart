import 'package:femahatetmasrapp/settingpage/widgets/setting_body.dart';
import 'package:flutter/material.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: Colors.white,
      body: SettingBody(),);
  }
}