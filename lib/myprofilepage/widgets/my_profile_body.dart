import 'package:femahatetmasrapp/myprofilepage/widgets/RowContainer.dart';
import 'package:femahatetmasrapp/myprofilepage/widgets/profile_cercle_image.dart';
import 'package:femahatetmasrapp/utils/app_for_profile_and_setting.dart';
import 'package:femahatetmasrapp/utils/gold_container.dart';
import 'package:femahatetmasrapp/utils/grey_container.dart';
import 'package:flutter/material.dart';

class MyProfileBody extends StatelessWidget {
  const MyProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    num width = MediaQuery.of(context).size.width;
    num height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
            left: width * 0.07, right: width * 0.07, top: height * 0.02),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBarForProfileAndSetting(
                width: width,
                height: height,
                mainTitle: 'My Profile',
                greycontainerimage: 'images/settinggrey.png',
              ),
              SizedBox(
                height: height * 0.08,
              ),
              ProfileCircleImage(width: width, height: height),
              SizedBox(
                height: height * 0.005,
              ),
              const Text(
                "Mohammed Albdalla",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 13,
                    color: Color(0xff00343D)),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              RowContainer(
                height: height,
                width: width,
                text: 'Edit Profile',
                imagePath: 'images/editprofileiconn.png',
              ),
              RowContainer(
                height: height,
                width: width,
                text: 'Notification',
                isNotification: true,
                imagePath: 'images/notificationicon.png',
              ),
              RowContainer(
                height: height,
                width: width,
                text: 'Payment Method',
                imagePath: 'images/Wallet.png',
              ),
              RowContainer(
                height: height,
                width: width,
                text: 'Profiles',
                imagePath: 'images/profiles.png',
              ),
              RowContainer(
                height: height,
                width: width,
                text: 'Security',
                imagePath: 'images/sexcurity.png',
              ),
              RowContainer(
                height: height,
                width: width,
                text: 'Settings',
                imagePath: 'images/setting.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
