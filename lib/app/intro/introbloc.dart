import 'package:flutter/material.dart';
import 'package:kingof2odds/constants/assets/appcolors.dart';
import 'package:kingof2odds/constants/assets/imageassets.dart';


class IntroBloc extends StatefulWidget {
  @override
  _IntroBlocState createState() => _IntroBlocState();
}

class _IntroBlocState extends State<IntroBloc> {
  @override
  Widget build(BuildContext context) {
return Scaffold(
        backgroundColor: AppColors.bg,
        body: Center(
          child: Image(
            height: 200,
            image: AppImage.logo,),
        ),
      );

  }
}