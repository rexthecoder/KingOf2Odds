import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Container signUpBtn({Widget icons, String text}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20),
    width: double.infinity,
    height: 55.0,
    color: Colors.white,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(child: icons),
        SizedBox(
          width: 10,
        ),
        Container(child: Text(text))
      ],
    ),
  );
}

class AppFont {
  static TextStyle header = GoogleFonts.poppins(
    color: Colors.white,
    fontSize: 25,
  );
  static TextStyle body = GoogleFonts.poppins(
    color: Colors.white,
    fontSize: 15,
  );
  
}
