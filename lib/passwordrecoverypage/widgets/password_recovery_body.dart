import 'package:femahatetmasrapp/passwordrecoverypage/widgets/page_builder1.dart';
import 'package:femahatetmasrapp/passwordrecoverypage/widgets/page_builder2.dart';
import 'package:femahatetmasrapp/passwordrecoverypage/widgets/page_builder3.dart';
import 'package:femahatetmasrapp/passwordrecoverypage/widgets/recovery_app_bar.dart';
import 'package:flutter/material.dart';

class PasswordRecoveryBody extends StatelessWidget {
  const PasswordRecoveryBody({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controler = PageController();
    return SafeArea(
      child: PageView(
        controller: controler,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.07,
                left: MediaQuery.of(context).size.width * 0.07,
                top: MediaQuery.of(context).size.height * 0.0355),
            child: SingleChildScrollView(
              child: Pagebulder1(
                controller: controler,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.07,
                left: MediaQuery.of(context).size.width * 0.07,
                top: MediaQuery.of(context).size.height * 0.0355),
            child: SingleChildScrollView(
              child: PageBulder2(controller: controler),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.07,
                left: MediaQuery.of(context).size.width * 0.07,
                top: MediaQuery.of(context).size.height * 0.0355),
            child: SingleChildScrollView(
              child: PageBuilder3(controller: controler),
            ),
          ),
        ],
      ),
    );
  }
}


