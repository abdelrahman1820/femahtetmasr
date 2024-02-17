import 'package:device_preview/device_preview.dart';
import 'package:femahatetmasrapp/myprofilepage/my_profile_view.dart';
import 'package:femahatetmasrapp/settingpage/setting_view.dart';
import 'package:femahatetmasrapp/signinpage/signin_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    tools: const [...DevicePreview.defaultTools],
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyProfileview());
  }
}
