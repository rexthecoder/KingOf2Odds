import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kingof2odds/infrastructure/assets/appcolors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kingof2odds/infrastructure/assets/imageassets.dart';
import 'package:kingof2odds/infrastructure/assets/resuable.dart';
import 'package:kingof2odds/presentation/routes/router.gr.dart';
class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: AppColors.bg,
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(AppColors.bg, BlendMode.hardLight),
                  fit: BoxFit.contain,
                  image: AppImage.logo)),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Text(
                "Create Account",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                children: <Widget>[
                  signUpBtn(
                      text: "Sign up with email",
                      icons: FaIcon(
                        FontAwesomeIcons.envelope,
                        color: Colors.red,
                        size: 25,
                      )),
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
                      text: "Sign up with Google",
                      icons: Image(height: 25, image: AppImage.google)),
                  SizedBox(
                    height: 20,
                  ),
                  signUpBtn(
                      text: "Sign up with Facebook",
                      icons: FaIcon(
                        FontAwesomeIcons.facebookSquare,
                        color: Colors.blue,
                        size: 27,
                      )),
                 
              
                ],
              ),
              SizedBox(
                height: 170,
              ),
              GestureDetector(
                 onTap: () {
                  ExtendedNavigator.of(context).push(Routes.resigrationScreen);
                },
                              child: Container(
                  child: Text(
                    "Have an account? Sign in",
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
    );
  }
}