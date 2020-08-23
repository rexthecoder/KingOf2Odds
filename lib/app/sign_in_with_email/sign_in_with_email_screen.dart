import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kingof2odds/app/dashboard/homePage.dart';
import 'package:kingof2odds/constants/assets/appcolors.dart';
import 'package:kingof2odds/constants/assets/imageassets.dart';
import 'package:kingof2odds/constants/assets/resuable.dart';

import 'sigin_in_with_email_screen_form.dart';

class SignInWithEmailLogIn extends StatelessWidget {
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
                    child: Text("Welcome back",
            textAlign: TextAlign.center, style: AppFont.header)),
                Container(
                    alignment: Alignment.center,
                    child: Text("Enter your email to sign in to your account",
            textAlign: TextAlign.center, style: AppFont.body)),
                SizedBox(
                  height: 100,
                ),
                SignInWithEmailForm(),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(right: 20.0),
                  alignment: Alignment.bottomRight,
                  child: FlatButton(
                      color: Colors.white, onPressed: () {
                        Navigator.push(context, CupertinoPageRoute(builder: (BuildContext context) => HomePage()));
                      }, child: Text("Next")),
                )
              ],
          ),
        ),
      )),
    );
  }
}
