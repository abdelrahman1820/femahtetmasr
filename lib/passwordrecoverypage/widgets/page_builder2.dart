import 'dart:async';

import 'package:femahatetmasrapp/utils/custom_action_button.dart';
import 'package:flutter/material.dart';
import 'package:femahatetmasrapp/passwordrecoverypage/widgets/otb_container.dart';
import 'package:femahatetmasrapp/passwordrecoverypage/widgets/recovery_app_bar.dart';

class PageBulder2 extends StatefulWidget {
  const PageBulder2({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final PageController controller;

  @override
  State<PageBulder2> createState() => _PageBulder2State();
}

class _PageBulder2State extends State<PageBulder2> {
  late Timer _timer;
  int _secondsRemaining = 30;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    const oneSecond = Duration(seconds: 1);
    _timer = Timer.periodic(oneSecond, (timer) {
      setState(() {
        if (_secondsRemaining == 0) {
          _timer.cancel();
        } else {
          _secondsRemaining--;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RecoveryAppBar(
          title: 'OTP Verification',
          onTap: () {
            widget.controller.previousPage(
                duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
          },
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Image.asset(
          "images/recoverypassword2.png",
          fit: BoxFit.cover,
          width: 330,
          height: 306,
        ),
        const SizedBox(height: 16),
        const Text(
          "An authentication code has been\n    sent to (+20) 017234-44556",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color(0xffB7864B),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            OTBContainer(first: true, last: false),
            OTBContainer(first: true, last: false),
            OTBContainer(first: true, last: false),
            OTBContainer(first: true, last: false),
            OTBContainer(first: true, last: true),
          ],
        ),
        Row(
          children: [
            const Spacer(),
            GestureDetector(
              onTap: () {
                // Implement resend OTP functionality here
              },
              child: const Text(
                "Not yet get?",
                style: TextStyle(color: Color(0xffB7864B), fontSize: 13),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Implement resend OTP functionality here
              },
              child: const Text(
                " Resend OTP",
                style: TextStyle(color: Color(0xff00343D), fontSize: 13),
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        CustomActionButton(
          controller: widget.controller,
          centertitle: "Next",
          onTap: () {
            widget.controller.nextPage(
                duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
          },
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "00:${_secondsRemaining.toString()}",
            ),
            const Text(
              " sec left",
              style: TextStyle(color: Color(0xffB7864B), fontSize: 14),
            )
          ],
        ),
      ],
    );
  }
}
