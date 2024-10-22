import 'package:body_coach/screens/authentication/login/login_screen.dart';
import 'package:body_coach/screens/authentication/signup/signup_screen.dart';
import 'package:body_coach/shared/constants.dart';
import 'package:body_coach/shared/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              kWelcomeMsg,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
//            SvgPicture.asset(
//              "assets/icons/chat.svg",
//              height: size.height * 0.45,
//            ),
          Image.asset(pImg1),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: kLogIn,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: kSignUp,
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
