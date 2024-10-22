import 'package:body_coach/screens/authentication/signup/signup_screen.dart';
import 'package:body_coach/screens/home/home_screen.dart';
import 'package:body_coach/shared/already_have_an_account_acheck.dart';
import 'package:body_coach/shared/constants.dart';
import 'package:body_coach/shared/rounded_button.dart';
import 'package:body_coach/shared/rounded_input_field.dart';
import 'package:body_coach/shared/rounded_password_field.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            kLogIn,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03),
//            SvgPicture.asset(
//              "assets/icons/login.svg",
//              height: size.height * 0.35,
//            ),
        Image.asset(pImg2),
          SizedBox(height: size.height * 0.03),
          RoundedInputField(
            hintText: kYourEmail,
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: kLogIn,
            press: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (ctx) => HomeScreen()),
              );
            },
          ),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAnAccountCheck(
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
    );
  }
}
