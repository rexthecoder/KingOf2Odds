import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kingof2odds/app/registration/sign_up.dart';
import 'package:kingof2odds/app/sign_in_with_email/sigin_in_with_email_screen_form.dart';
import 'package:kingof2odds/app/sign_in_with_email/sign_in_with_email_screen.dart';
import 'package:kingof2odds/constants/assets/appcolors.dart';
import 'package:kingof2odds/constants/assets/imageassets.dart';
import 'package:kingof2odds/constants/assets/resuable.dart';
import 'package:google_fonts/google_fonts.dart';



class ResigrationScreen extends StatelessWidget {
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
     
          fit: BoxFit.contain,
          image: AppImage.logofade)),
            child:  SingleChildScrollView(
                          child: Column(
                children: <Widget>[
                  SizedBox(
        height: 30,
                  ),
                  Text(
        "Sign In",
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 25,
        ),
                  ),
                  SizedBox(
        height: 40,
                  ),
                  Column(
        children: <Widget>[
          GestureDetector(
              onTap: () {
               Navigator.push(context, CupertinoPageRoute(builder: (BuildContext context) =>SignInWithEmailLogIn()));
              },
              child: signUpBtn(
                  text: "Sign in with email",
                  icons: FaIcon(
                    FontAwesomeIcons.envelope,
                    color: Colors.red,
                    size: 25,
                  )),
          ),
          SizedBox(
              height: 20,
          ),
          Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 30.0),
                  child: Container(
                    height: 1.0,
                    width: 150.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Or",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 30.0),
                  child: Container(
                    height: 1.0,
                    width: 140.0,
                    color: Colors.white,
                  ),
                ),
              ],
          ),
          SizedBox(
              height: 20,
          ),
          signUpBtn(
                text: "Sign in with Google",
                icons: Image(height: 25, image: AppImage.google)),
          SizedBox(
              height: 20,
          ),
          signUpBtn(
                text: "Sign in with Facebook",
                icons: FaIcon(
                  FontAwesomeIcons.facebookSquare,
                  color: Colors.blue,
                  size: 27,
                )),
          SizedBox(
              height: 20,
          ),
          signUpBtn(
                text: "Sign in with Apple",
                icons: FaIcon(
                  FontAwesomeIcons.apple,
                  color: Colors.black,
                  size: 30,
                )),
        ],
                  ),
                  SizedBox(
        height: 120,
                  ),
                  GestureDetector(
        onTap: () {
        Navigator.push(context,CupertinoPageRoute(builder: (BuildContext context) => SignUpScreen()));
        },
        child: Container(
          child: Text(
              "New here? Create Account",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 15,
              ),
          ),
        ),
                  ),
                  SizedBox(
        height: 20,
                  ),
                  Container(
        child: Text(
          "Terms of Use",
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 14,
          ),
        ),
                  )
                ],
              ),
            ),
          ),
      ),
    );
  }
}
