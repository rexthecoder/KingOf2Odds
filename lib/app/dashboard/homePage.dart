import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kingof2odds/constants/assets/appcolors.dart';
import 'package:kingof2odds/constants/expansion.dart' as custom;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
            child: Container(
          color: Color(0xff052620),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      //  padding: EdgeInsets.only(right: 120),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Text("R",
                          style: TextStyle(
                              color: Color(0xff634AE3),
                              fontFamily: "Futura",
                              fontSize: 17,
                              fontWeight: FontWeight.w800)),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Rexford Asamosh",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Futura",
                                    fontSize: 17,
                                    fontWeight: FontWeight.w800)),
                            SizedBox(
                              width: 15.0,
                            ),
                            Text("Online",
                                style: TextStyle(
                                    color: Color(0xff39FF14),
                                    fontFamily: "Futura",
                                    fontSize: 13,
                                    fontWeight: FontWeight.w800))
                          ]),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  color: Color(0Xff5B6C13),
                ),
              ),
              Column(
                children: [
                  custom.ExpansionTile(
                    title: Text("SERVICES",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Futura",
                            fontSize: 15,
                            fontWeight: FontWeight.w400)),
                    // trailing: FaIcon(
                    //   FontAwesomeIcons.angleDown,
                    //   color: Colors.white,
                    // ),
                    children: [
                      expensionItems("FINANCIAL PLANNING"),
                      expensionItems("STRATEGIC PLANNING"),
                      expensionItems("FUNDING ADVICE"),
                      expensionItems("BETTING ANALYSIS TIPS"),
                    ],
                    leading: FaIcon(
                      FontAwesomeIcons.globeAfrica,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  custom.ExpansionTile(
                    title: Text("SUBSCRIPTION",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Futura",
                            fontSize: 15,
                            fontWeight: FontWeight.w400)),
                    iconColor: Colors.white,
                    // trailing: FaIcon(
                    //   FontAwesomeIcons.angleDown,
                    //   color: Colors.white,
                    // ),
                    children: [
                       expensionItems("MONTHLY"),
                       expensionItems("THREE MONTHS"),
                    ],
                    leading: FaIcon(
                      FontAwesomeIcons.dollarSign,
                      color: Colors.white,
                        size: 20,
                    ),
                  ),
                  drawerTextTile(
                      icon: FontAwesomeIcons.lightbulb, text: "BETTING TIPS"),
                  drawerTextTile(
                      icon: FontAwesomeIcons.envelope, text: "CONTACT US"),
                  drawerTextTile(
                      icon: FontAwesomeIcons.heart, text: "RATE APP"),
                  drawerTextTile(icon: FontAwesomeIcons.question, text: "FAQ"),
                  Container(
                    padding: EdgeInsets.only(left: 15.0, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.bell,
                          color: Colors.white,
                            size: 20,
                        ),
                        // SizedBox(
                        //   width: 40.0,
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(right: 40.0),
                          child: Text("NOTIFICATIONS",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Futura",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400)),
                        ),
                        Switch(
                          value: _value,
                          onChanged: (bool newValue) {
                            setState(() {
                              _value = newValue;
                            });
                          },
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )),
        appBar: AppBar(
          backgroundColor: Color(0Xff5B6C13),
          // automaticallyImplyLeading: false,
          title: Text(
            "BET PREDICTIONS",
            style: TextStyle(color: Color(0xff39FF14).withAlpha(150)),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text("FREE",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Futura",
                        fontSize: 13,
                        fontWeight: FontWeight.w400)),
              ),
              Tab(
                child: Text("REGULAR",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Futura",
                        fontSize: 13,
                        fontWeight: FontWeight.w400)),
              ),
              Tab(
                child: Text("VIP",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Futura",
                        fontSize: 13,
                        fontWeight: FontWeight.w400)),
              ),
              Tab(
                child: Text("VVIP",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Futura",
                        fontSize: 13,
                        fontWeight: FontWeight.w400)),
              ),
            ],
          ),
          leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                _scaffoldKey.currentState.openDrawer();
              }),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }

  Padding expensionItems(String text) {
    return Padding(
      padding: const EdgeInsets.only(right: 40.0,top:10),
      child: Text(text,
          style: TextStyle(
              color: Colors.white,
              fontFamily: "Futura",
              fontSize: 13,
              fontWeight: FontWeight.w400)),
    );
  }

  Container drawerTextTile({IconData icon, String text}) {
    return Container(
      padding: EdgeInsets.only(left: 15.0, top: 20),
      child: Row(
        children: [
          FaIcon(
            icon,
            color: Colors.white,
              size: 20,
          ),
          SizedBox(
            width: 40.0,
          ),
          Text(text,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Futura",
                  fontSize: 15,
                  fontWeight: FontWeight.w400))
        ],
      ),
    );
  }
}
