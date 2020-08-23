import 'package:flutter/material.dart';
import 'package:kingof2odds/constants/assets/appcolors.dart';
import 'package:kingof2odds/constants/assets/imageassets.dart';
import 'package:kingof2odds/constants/assets/resuable.dart';
import 'sign_up_with_email_screen_form.dart';


class SignUpWithEmailLogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
              child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                color: AppColors.bg,
                image: DecorationImage(
          // colorFilter:
          //     ColorFilter.mode(AppColors.bg, BlendMode.xor),
          fit: BoxFit.contain,
          image: AppImage.logofade)),
            child: SingleChildScrollView(
                          child: Column(
                children: [
                  SizedBox(
        height: 30,
                  ),
                  Container(
          alignment: Alignment.center,
          child: Text("Create an Account",
                textAlign: TextAlign.center, style: AppFont.header)),
                  
                  SizedBox(
        height: 50,
                  ),
                  SignUpWithEmailForm(),
                  SizedBox(
        height: 20,
                  ),
                  Container(
        padding: EdgeInsets.only(right: 20.0, left: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              Container(
                  child: Text(
                "Have an account? Sign in",
                style: AppFont.body,
              )),
              FlatButton(
                  color: Colors.white,
                  onPressed: () {},
                  child: Text("Create Account")),
          ],
        ),
                  ),
                  SizedBox(
        height: 25,
                  ),
                  Container(
        padding: EdgeInsets.only(right: 20.0, left: 20.0),
        child: Text(
          'By clicking on "creating an account" you agree to our Terms of use and Privacy Policy.',
          style: AppFont.body,
          textAlign: TextAlign.center,
        ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
