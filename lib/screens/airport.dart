import 'dart:math' as math;

import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class AirportPage extends StatefulWidget {
  const AirportPage({Key? key}) : super(key: key);

  @override
  State createState() {
    return AirportPageState();
  }
}

class AirportPageState extends State<AirportPage> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*  appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Icon(
            Icons.filter_list,
            color: Colors.brown[300],
            size: 40,
          )
        ],
        title: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80'),
                  fit: BoxFit.cover)),
        ),
      ), */
      body: ExpandableTheme(
        data: const ExpandableThemeData(
          iconColor: Colors.brown,
          useInkWell: true,
        ),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80'),
                            fit: BoxFit.cover)),
                  ),
                  Icon(
                    Icons.grid_view,
                    color: Colors.brown[300],
                    size: 30,
                  )
                ],
              ),
            ),
            Center(
              child: Text(
                'Airports',
                style: GoogleFonts.ubuntu(
                    height: 1.2,
                    textStyle: TextStyle(
                        color: Colors.brown[300],
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Card1(),
            Card2(),
            Card3(),
            Card4(),
          ],
        ),
      ),
      bottomNavigationBar: SalomonBottomBar(
        itemPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        unselectedItemColor: Colors.brown[300],
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.brown[300],
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text("Favorites"),
            selectedColor: Colors.brown[300],
          ),

          /// Search
          SalomonBottomBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
            selectedColor: Colors.brown[300],
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            selectedColor: Colors.brown[300],
          ),
        ],
      ),
    );
  }
}

class Card1 extends StatelessWidget {
  String description =
      "Baghdad International Airport (IATA: BGW, ICAO: ORBI), previously Saddam International Airport (IATA: SDA, ICAO: ORBS) (Arabic: مطار بغداد الدولي, romanized: Maṭār Baġdād ad-Dawaliyy, Kurdish: فڕۆکەخانەی نێونەتەوەییی بەغدا), is Iraq's largest international airport, located in a suburb about 16 km (9.9 mi) west of downtown Baghdad in the Baghdad Governorate. It is the home base for Iraq's national airline, Iraqi Airways.";

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            SizedBox(
              height: 180,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/air1.jpg'), fit: BoxFit.cover),
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Baghdad International Airport",
                      style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                              color: Colors.brown[300],
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    )),
                collapsed: Text(
                  description,
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          description,
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Card2 extends StatelessWidget {
  String description =
      "Erbil International Airport (IATA: EBL, ICAO: ORER) (Kurdish: فڕۆکه‌خانه‌ی نێوده‌وڵه‌تیی هه‌ولێر), is the main airport of the city of Erbil in the Kurdistan Region, Iraq. It is administered by the Iraqi Government and the Kurdistan Regional Government under a committee consisting of the Prime Minister of Kurdistan Region, Masrour Barzani,[citation needed] and is one of two international airports (the other being Sulaymaniyah Airport), with a third in Duhok being under construction. The new modern airport opened in 2010. The airport has one of the longest runways in the world.";

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            SizedBox(
              height: 180,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/air3.jpg'), fit: BoxFit.cover),
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Erbil International Airport",
                      style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                              color: Colors.brown[300],
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    )),
                collapsed: Text(
                  description,
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          description,
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Card3 extends StatelessWidget {
  String description =
      "Basrah International Airport (Arabic: مطار البصرة الدولي, romanized: Maṭār al-Baṣrah ad-Duwaliyy) (IATA: BSR, ICAO: ORMM) is the second largest international airport in Iraq, and is located in the southern city of Basra.";

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            SizedBox(
              height: 180,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/air2.jpg'), fit: BoxFit.cover),
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Basrah International Airport",
                      style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                              color: Colors.brown[300],
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    )),
                collapsed: Text(
                  description,
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          description,
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Card4 extends StatelessWidget {
  String description =
      "Karbala International Airport (Arabic: مَطَار كَرْبَلَاء ٱلدَُوَلِِي, romanized: Maṭār Karbalāʾ Ad-Duwalī) is an airport under development in Karbala Governorate, Iraq. It is located between the cities of Najaf and Karbala, about 20 mi (32 km) to the southeast of Karbala. It was expected to be Iraq's largest airport upon completion, and to receive an inaugural flight in July 2018, but has been affected by corruption.";

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            SizedBox(
              height: 180,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/air4.jpg'), fit: BoxFit.cover),
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Karbala International Airport",
                      style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                              color: Colors.brown[300],
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    )),
                collapsed: Text(
                  description,
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          description,
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
