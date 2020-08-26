import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kingof2odds/constants/assets/appcolors.dart';
import 'package:kingof2odds/constants/expansion.dart' as custom;
import 'package:popup_menu/popup_menu.dart';
import 'package:fancy_dialog/FancyAnimation.dart';
import 'package:fancy_dialog/FancyGif.dart';
import 'package:fancy_dialog/FancyTheme.dart';
import 'package:fancy_dialog/fancy_dialog.dart';

const List<Key> keys = [
      Key("Fancy"),
      Key("Flat"),
    ];
    
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  GlobalKey btnKey = GlobalKey();
  bool _value = false;
  PopupMenu menu;

  @override
  void initState() {
    
    menu = PopupMenu(items: [
      // MenuItem(title: 'Copy', image: Image.asset('assets/copy.png')),
      // MenuItem(title: 'Home', image: Icon(Icons.home, color: Colors.white,)),
      MenuItem(
          title: 'Mail',
          image: Icon(
            Icons.mail,
            color: Colors.white,
          )),
      MenuItem(
          title: 'Power',
          image: Icon(
            Icons.power,
            color: Colors.white,
          )),
      MenuItem(
          title: 'Setting',
          image: Icon(
            Icons.settings,
            color: Colors.white,
          )),
      MenuItem(
          title: 'PopupMenu',
          image: Icon(
            Icons.menu,
            color: Colors.white,
          ))
    ], onClickMenu: onClickMenu, onDismiss: onDismiss, maxColumn: 4);
    super.initState();
  }

  void onClickMenu(MenuItemProvider item) {
    print('Click menu -> ${item.menuTitle}');
  }

  void onDismiss() {
    print('Menu is dismiss');
  }

  @override
  Widget build(BuildContext context) {
    PopupMenu.context = context;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: AppColors.bg,
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
          actions: [
            IconButton(
                onPressed: onDismissOnlyBeCalledOnce,
                key: btnKey,
                icon: Icon(Icons.more_vert))
          ],
          title: Text(
            "BET PREDICTIONS",
            style: TextStyle(color: Color(0xff39FF14).withAlpha(150)),
          ),
          bottom: TabBar(
            indicatorColor: Color(0xffF0C023),
            indicatorSize: TabBarIndicatorSize.tab,
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
            Container(
                height: 200,
                alignment: Alignment.topLeft,
                child: ListView.builder(
                    shrinkWrap: false,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(left: 10.0, top: 10.0),
                              child: index % 3 == 0
                                  ? Text("06/07/2020",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold))
                                  : Text("")),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              matchesContainer(
                                  league: "Italy - Serie A",
                                  team: "AC MILAN",
                                  image: NetworkImage(
                                      "https://bestanimations.com/Flags/Europe/Western/Italy/italy-flag-waving-animated-gif-2-big1.gif")),
                              Column(
                                children: [
                                  FaIcon(
                                    index % 2 == 0
                                        ? FontAwesomeIcons.timesCircle
                                        : FontAwesomeIcons.checkCircle,
                                    color: index % 2 == 0
                                        ? Colors.red
                                        : Color(0xff39FF14),
                                    size: 17,
                                  ),
                                  Text("FT \n OV 2.5",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold)),
                                  Text("1.60",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff39FF14),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                              matchesContainer(
                                  league: "GMT - 20:10",
                                  team: "PARMA",
                                  image: null)
                            ],
                          )
                        ],
                      );
                    })),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: RaisedButton(
                key: keys[0],
                child: Text(
                  "Fancy Dialog",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => FancyDialog(
                            title: "Fancy Gif Dialog",
                            descreption:
                                "This is descreption for fancy gif,you can load any image or gif to be displayed :), and you can choose between two themes Fancy and Flat",
                            animationType: FancyAnimation.BOTTOM_TOP,
                            theme: FancyTheme.FANCY,
                            gifPath:
                                FancyGif.MOVE_FORWARD, //'./assets/walp.png',
                            okFun: () {
                              print("it's working :)");
                            },
                          ));
                },
              ),
            ),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }

  void onDismissOnlyBeCalledOnce() {
    menu.show(widgetKey: btnKey);
  }

  Container matchesContainer(
      {String league, String team, ImageProvider image}) {
    return Container(
      height: 70,
      margin: EdgeInsets.only(left: 10.0, top: 8.0),
      width: 145,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              image == null
                  ? Text("")
                  : Image(height: 30, width: 30, image: image),
              SizedBox(width: 8.0),
              Text(league)
            ],
          ),
          Text(team,
              style: GoogleFonts.poppins(
                  color: Colors.black, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }

  Padding expensionItems(String text) {
    return Padding(
      padding: const EdgeInsets.only(right: 40.0, top: 10),
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
