import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kingof2odds/app/intro/widget/intro.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewTest extends StatefulWidget {
  @override
  _PageViewTestState createState() => _PageViewTestState();
}

class _PageViewTestState extends State<PageViewTest> {
    int _current;
  final controller = PageController(viewportFraction: 0.8);
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 500,
              child: PageView(
                controller: controller,
                children: imgList,
                onPageChanged:   _onPageViewChange,
              ),
            ),
            SizedBox(height: 16),
            Container(
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,

                effect: WormEffect(),
              ),
            ),
               Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                  onTap: () => controller.jumpToPage(2),
                  child: introBtn(color: Color(0xff78849E29), text: "SKIP")),
              GestureDetector(
                  onTap: () {
                    controller.nextPage(curve: Curves.bounceIn,duration:Duration(seconds: 1));
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
          ],
        ),
      ),
    );

  }
  _onPageViewChange(int page) {   
    print("Current Page: " + page.toString());
    setState(() {
     _current = page.toInt();
    });
  }
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