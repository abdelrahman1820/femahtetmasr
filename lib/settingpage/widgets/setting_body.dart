import 'package:femahatetmasrapp/myprofilepage/widgets/RowContainer.dart';
import 'package:femahatetmasrapp/settingpage/widgets/image_name_container.dart';
import 'package:femahatetmasrapp/utils/app_for_profile_and_setting.dart';
import 'package:femahatetmasrapp/utils/custom_action_button.dart';
import 'package:flutter/material.dart';

class SettingBody extends StatelessWidget {
  const SettingBody({super.key});

  @override
  Widget build(BuildContext context) {
    num width = MediaQuery.of(context).size.width;
    num height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
            left: width * 0.07, right: width * 0.07, top: height * 0.02),
        child: Column(
          children: [
            AppBarForProfileAndSetting(
                width: width,
                height: height,
                mainTitle: "Settings",
                greycontainerimage: "images/Vector.png"),
            SizedBox(
              height: height * 0.08,
            ),
            ImageNameContainer(height: height, width: width),
            SizedBox(
              height: height * 0.05,
            ),
            RowContainer(
              height: height,
              width: width,
              text: 'Change Password',
              imagePath: 'images/key.png',
            ),
            RowContainer(
              height: height,
              width: width,
              text: "Notififcation",
              imagePath: "images/notificationicon.png",
              isNotification: true,
            ),
            RowContainer(
                height: height,
                width: width,
                text: "Invite Friends",
                imagePath: "images/plusperson.png"),
            RowContainer(
                height: height,
                width: width,
                text: "Terms & Conditions",
                imagePath: "images/terms.png"),
            RowContainer(
                height: height,
                width: width,
                text: "Privacy Policy",
                imagePath: "images/privacy.png"),
            SizedBox(height: height * 0.025),
            CustomActionButton(
                centertitle: "  Log Out",
                onTap: () {},
                icon: Image.asset(
                  "images/logout.png",
                  width: 22,
                  height: 22,
                ))
          ],
        ),
      ),
    );
  }
}
