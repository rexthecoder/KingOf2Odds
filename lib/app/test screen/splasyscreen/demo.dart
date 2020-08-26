import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gooey_carousel/gooey_carrousel.dart';

import 'content_card.dart';

class GooeyEdgeDemo extends StatefulWidget {
  @override
  _GooeyEdgeDemoState createState() => _GooeyEdgeDemoState();
}

class _GooeyEdgeDemoState extends State<GooeyEdgeDemo> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor:Colors.transparent,
    ));
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GooeyCarousel(
            children: <Widget>[
              ContentCard(
                color: 'Red',
                altColor: Color(0xFF4259B2),
                title: "Welcome to Kingof2odd",
                subtitle:
                    "The best way to navigate your world and discover the best tips. Let's get started!",
              ),
              ContentCard(
                color: 'Yellow',
                altColor: Color(0xFF904E93),
                title: "Odds for all",
                subtitle:
                    'If you’re offered a seat on a rocket ship, don’t ask what seat! Just get on.',
              ),
              ContentCard(
                color: 'Blue',
                altColor: Color(0xFFFFB138),
                title: "Love for the Game",
                subtitle:
                    'Relax your mind and create inner peace with soothing sounds of nature.',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
