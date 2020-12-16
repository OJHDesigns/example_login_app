import 'package:example_login_app/components/already_have_an_account_check.dart';
import 'package:example_login_app/components/rounded_button.dart';
import 'package:example_login_app/components/rounded_input_field.dart';
import 'package:example_login_app/components/rounded_password_field.dart';
import 'package:example_login_app/screens/login/login_screen.dart';
import 'package:example_login_app/screens/register/components/background.dart';
import 'package:example_login_app/screens/register/components/or_divider.dart';
import 'package:example_login_app/screens/register/components/social_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "REGISTER",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "Register",
              press: () {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
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
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
