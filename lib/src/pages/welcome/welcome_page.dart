import 'package:flutter/material.dart';
import 'package:lukhu_assessment/src/constants/lukhu_constants.dart';
import 'package:lukhu_assessment/src/core.dart';
import 'package:lukhu_assessment/src/images.dart';
import 'package:lukhu_assessment/src/pages/login/login_page.dart';
import 'package:lukhu_assessment/src/widgets/lukhu_icon.dart';

import '../../widgets/buttons/custom_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => WelcomePageState();
}

class WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LukhuContants.backgoundBlue,
      body: SingleChildScrollView(
        child: SizedBox(
          height: context.heightPx,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                child: Image.asset(
                  Images.genesisImage,
                  width: context.widthPx,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(14),
                  width: context.widthPx,
                  decoration: BoxDecoration(
                    color: LukhuContants.optionCardBackgroundBlue,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const LukhuIcon().padding(top: 16, bottom: 14),
                      Text(
                        'The Safest and Fastest Way to Buy, Sell and Discover Fashion Online! 😎 ',
                        style: TextStyle(
                            color: LukhuContants.textDarkColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                      CustomButton(
                        label: 'Log in with Phone Number',
                        onTap: () {
                          context
                              .navigateToPageWithReplacement(const LoginPage());
                        },
                        color: LukhuContants.buttonBlue,
                        radius: 8,
                        height: 40,
                        textColor: LukhuContants.lukhuWhite,
                      ).padding(top: 32, bottom: 16),
                      CustomButton(
                        label: 'Create an Account',
                        borderColor: LukhuContants.boarderColor,
                        onTap: () {},
                        textColor: const Color(0xff34303E),
                        color: LukhuContants.lukhuWhite,
                        radius: 8,
                        height: 40,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child:
                                  Divider(color: LukhuContants.dividerColor)),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                              'or',
                              style:
                                  TextStyle(color: LukhuContants.dividerColor),
                            ),
                          ),
                          Expanded(
                              child: Divider(color: LukhuContants.dividerColor))
                        ],
                      ).padding(top: 25, bottom: 23),
                      CustomButton(
                        assetIcon: Images.googleIon,
                        label: 'Continue with Google',
                        onTap: () {},
                        color: LukhuContants.lukhuWhite,
                        borderColor: LukhuContants.boarderColor,
                        radius: 8,
                        height: 40,
                      ),
                      CustomButton(
                        assetIcon: Images.fbIcon,
                        label: 'Continue with Facebook',
                        onTap: () {},
                        color: LukhuContants.lukhuWhite,
                        radius: 8,
                        height: 40,
                        borderColor: LukhuContants.boarderColor,
                      ).padding(top: 16, bottom: 12),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'By using the Lukhu app, you agree to our',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: LukhuContants.textDarkColor,
                          ),
                          children: [
                            TextSpan(
                              text: '\nTerms of Service',
                              style: TextStyle(
                                color: LukhuContants.linkBlue,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const TextSpan(text: ' and '),
                            TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(
                                color: LukhuContants.linkBlue,
                              ),
                            )
                          ],
                        ),
                      ).alignment(Alignment.center)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
