import 'package:flutter/material.dart';
import 'package:hious_package_delivery_app/components/buttons.dart';
import 'package:hious_package_delivery_app/utils/designs/assets.dart';
import 'package:hious_package_delivery_app/components/spacers.dart';
import 'package:hious_package_delivery_app/utils/designs/colors.dart';
import 'package:hious_package_delivery_app/utils/res/res_profile.dart';
import 'package:hious_package_delivery_app/utils/designs/styles.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

const double space = 18.0;

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Material(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Image(
                  image: AssetImage(Assets.deliveryMan),
                ),
                vSpace(space / 2),
                Text(
                  ResWelcomeScreen.welcomeMessage1,
                  style: sWelcomeScreeBigText,
                ),
                vSpace(space / 4),
                Text(
                  ResWelcomeScreen.welcomeMessage2,
                  style: sWelcomeScreenSmallText,
                ),
                vSpace(space),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    primaryButton(
                      text: ResWelcomeScreen.register,
                      onPressed: () {},
                      fillColor: kPrimaryColor,
                      textColor: Colors.white,
                    ),
                    // hSpace(space),
                    primaryButton(
                      text: ResWelcomeScreen.login,
                      onPressed: () {},
                      fillColor: Colors.transparent,
                      textColor: Colors.black,
                    )
                  ],
                )
                // primaryButton(
                //   text: ResWelcomeScreen.login,
                //   onPressed: () {},
                //   fillColor: Colors.white,
                //   textColor: Colors.black,
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
