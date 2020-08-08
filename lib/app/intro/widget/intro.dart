import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kingof2odds/constants/assets/appcolors.dart';


final List<Widget> imgList = [
  introContainer("Get started",
      "If you’re offered a seat on a rocket ship, don’t ask what seat! Just get on."),
  introContainer("Welcome to Kingof2odd",
      "The best way to navigate your world and discover the best tips. Let's get started!"),
  introContainer(
      //     "Welcome to Kingof2odd",
      // "The best way to navigate your world and discover the best tips. Let's get started!"
      )
];
Container introContainer([String text1, String text2]) {
  return Container(
    // margin: EdgeInsets.symmetric(vertical: 10.0,),
    alignment: Alignment.center,
    height: 500,
    width: 250,
    decoration: BoxDecoration(
        color: Color(0xff7FBF3F).withOpacity(1.0),
        borderRadius: BorderRadius.circular(20)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SizedBox(
          height: 30,
        ),
        Container(
          alignment: Alignment.center,
          child: text1 == null
              ? Text("")
              : Text(
                  text1,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
        ),
        Stack(
          alignment: Alignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 170,
              width: 170,
              decoration: BoxDecoration(
                  color: Colors.white70.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(100)),
            ),
            Container(
              height: 130,
              width: 130,
              decoration: BoxDecoration(
                  color: Colors.white70.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(100)),
            ),
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  color: Colors.white70.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(100)),
            ),
            Container(
                child: FaIcon(
              FontAwesomeIcons.compass,
              color: Colors.white,
              size: 30,
            ))
          ],
        ),
        Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: text2 == null
              ? Text("")
              : Text(
                  text2,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
        ),
        SizedBox(
          height: 30,
        ),
      ],
    ),
  );
}

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: SafeArea(
        child: Column(children: [
          SizedBox(
            height: 30,
          ),
          CarouselSlider(
            items: imageSliders,
            carouselController: _controller,
            options: CarouselOptions(
                height: 500,
                carouselController: _controller,
                // autoPlay: true,
                enlargeCenterPage:
                    _current == 0 ? true : _current == 2 ? true : false,
                // enlargeStrategy: Enlar,
                // aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.map((url) {
              int index = imgList.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? Color(0xff665EFF)
                      : Color.fromRGBO(0, 0, 0, 0.4),
                ),
              );
            }).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                  onTap: () => _controller.jumpToPage(2),
                  child: introBtn(color: Color(0xff78849E29), text: "SKIP")),
              GestureDetector(
                  onTap: () {
                    _controller.nextPage();
                    _current == 2
                        ?  print("Here is where routing goes")
                         //Router.navigator.pushReplacementNamed(Router.resigrationScreen) 
                        : print("current is not complete");
                  },
                  child: introBtn(
                      color: Color(0xff7FBF3F),
                      text: _current == 2 ? "Done" : "NEXT")),
            ],
          )
        ]),
      ),
    );
  }

  Container introBtn({String text, Color color}) {
    return Container(
        height: 50.0,
        margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
        width: 130.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: Text(text,style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 15,
                  ),));
  }

  final List<Widget> imageSliders = imgList
      .map(
        (item) => Container(child: item),
      )
      .toList();
}
