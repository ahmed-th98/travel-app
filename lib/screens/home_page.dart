// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:travel/screens/all_places.dart';
import 'package:travel/screens/placeDetails.dart';

import 'airport.dart';
import 'details.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentIndex = 0;
  final List icons = [
    Icons.hotel,
    Icons.mosque,
    Icons.airplanemode_active,
    Icons.restaurant,
    Icons.stadium
  ];

  final data = ['Hotels', 'Shrines', 'Airports', 'Restaurants', 'Stadiums'];

  final List imageUrl = [
    'assets/5.jpg',
    'assets/Basra.jpg',
    'assets/Erbil.jpg',
    'assets/Karbala.jpg',
    'assets/Muthanna.jpg',
    'assets/Diyala.jpg',
    'assets/Babylon.jpg',
    'assets/Salah.jpg',
    'assets/Dhi.jpg',
    'assets/Maysan.jpg',
    'assets/Najaf.jpg',
  ];

  final names = [
    'Baghdad',
    'Basrah',
    'Erbil',
    'Karbala',
    'Al Muthanna',
    'Diyala',
    'Babylon',
    'Salah ad Din',
    'Dhi Qar',
    'Maysan',
    'Al-Najaf',
  ];

  final cityArea = [
    '4,555 Km',
    '19,070 Km',
    '15,074 Km',
    '5,034 Km',
    '51,740 Km',
    '17,685 Km',
    '5,603 Km',
    '24,751 Km',
    '12,900 Km',
    '16,072 Km',
    '28,824 Km',
  ];

  final cityDescription = [
    'Baghdad is the capital of Iraq and the second-largest city in the Arab world after Cairo. It is located on the Tigris near the ruins of the ancient Akkadian city of Babylon and the Sassanid Persian capital of Ctesiphon.',
    'Basra is an Iraqi city located on the Shatt al-Arab. It had an estimated population of 1.4 million in 2018. Basra is also Iraq\'s main port, although it does not have deep water access, which is handled at the port of Umm Qasr. The city is one of the ports from which the fictional Sinbad the Sailor journeyed.',
    'Erbil, also called Hawler and known in ancient history as Arbela, is the capital and most populated city in the Kurdistan Region of Iraq. There is no current census of the city and official population statistics are not available, its population is estimated to be around 1,600,000.',
    'Karbala or Kerbala is a city in central Iraq, located about 100 km southwest of Baghdad, and a few miles east of Lake Milh, also known as Razzaza Lake. Karbala is the capital of Karbala Governorate, and has an estimated population of 700,000 people.',
    'Muthanna Governorate or Al Muthanna Province, is a province in Iraq, named after the 7th-century Arab general al-Muthanna ibn Haritha. It is in the south of the country, bordering Saudi Arabia And Kuwait. Its capital is the city of Samawah.',
    'Diyala Governorate or Diyala Province is a governorate in central-eastern Iraq.',
    'Babylon was the capital city of the ancient Babylonian Empire, which itself is a term referring to either of two separate empires in the Mesopotamian area in antiquity. These two empires achieved regional dominance between the 19th and 15th centuries BC, and again between the 7th and 6th centuries BC.',
    'The Saladin or Salah ad Din Governorate (Arabic: محافظة صلاح الدين) is one of Iraq\'s 19 governorates, north of Baghdad. It has an area of 24,363 square kilometres (9,407 sq mi), with an estimated population of 1,042,200 people in 2003. It is made up of 8 districts, with the capital being Tikrit. Before 1976 the province was part of Baghdad Governorate.',
    'Dhi Qar Governorate is a governorate in southern Iraq. The provincial capital is Nasiriyah. Prior to 1976 the governorate was known as Muntafiq Governorate. Dhi Qar was the heartland of the ancient Iraqi civilization of Sumer, and includes the ruins of Ur, Eridu, Lagash, Larsa, Girsu, Umma, and Bad-tibira.',
    'Amarah, also spelled Amara, is a city in south-eastern Iraq, located on a low ridge next to the Tigris River waterway south of Baghdad about 50 km from the border with Iran. It lies at the northern tip of the marshlands between the Tigris and Euphrates.',
    'Najaf or An-Najaf al-Ashraf, also known as Baniqia, is a city in central Iraq about 160 km south of Baghdad. Its estimated population in 2013 was 1,000,000 people. It is the capital of Najaf Governorate.',
  ];

  final places = [
    'Iraqi National Museum',
    'The Abbasid Palace',
    'Shanashel Basrah',
    'Mosul Woods',
    'Taq Kasra',
    'Hatra',
    'Baghdad Tower',
  ];

  final placesImage = [
    'assets/p2.jpg',
    'assets/p7.jpg',
    'assets/p3.jpg',
    'assets/p5.jpg',
    'assets/p6.jpg',
    'assets/p4.jpg',
    'assets/p1.jpg',
  ];

  final placesDetails = [
    'The Iraq Museum is the national museum of Iraq, located in Baghdad. It is sometimes informally called the National Museum of Iraq, a recent phenomenon influenced by other nations\' naming of their national museums; The Iraq Museum\'s name is inspired by the name of the British Museum, however.',
    'The Abbasid Palace is situated in Baghdad overlooking the Tigris River.(Address: Maidan Square, Baghdad, Iraq).',
    'A row of traditional 19th century houses called Shanashels stands along a canal in Basra, Iraq. Abdul Latif Mandel House on the right has an intricate overhanging balcony and pointed windows.',
    'The Mosul forests are one of the Iraqi forests, established on the left coast of the city of Mosul, which was named at the time in 1954 on an area of one dunam. Stages until it reached an area of one dunam. Various types of trees were planted, such as eucalyptus, spinach, cinnabar, elm, pine and other types and varieties that suit the environmental conditions of the city.',
    'Tāq Kasrā, also transcribed as Taq-i Kisra or Taq-e Kesra or Ayvān-e Kesrā are the remains of a Sasanian-era Persian monument, dated to c. the 3rd to 6th-century, which is sometimes called the Arch of Ctesiphon. It is located near the modern town of Salman Pak, Iraq.',
    'Hatra was an ancient city in Upper Mesopotamia located in present-day eastern Nineveh Governorate in northern Iraq. The city lies 290 km northwest of Baghdad and 110 km southwest of Mosul.',
    'Baghdad Tower TV tower in Baghdad, Iraq. The tower opened in 1994 and replaced a communications tower destroyed in the Gulf War. A revolving restaurant and observation deck are located on the top floor. After the 2003 invasion of Iraq, the tower was occupied by American soldiers and was renamed as Baghdad Tower.'
  ];

  final placesLocation = [
    'Baghdad',
    'Baghdad',
    'Basrah',
    'Mosul',
    'Baghdad',
    'Mosul',
    'Baghdad'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
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
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 15),
                  child: Text(
                    '“Let\'s discover \n      the beauty of Iraq”',
                    style: GoogleFonts.ubuntu(
                        height: 1.2,
                        textStyle: TextStyle(
                            color: Colors.brown[300],
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage('assets/post.jpg'),
                            fit: BoxFit.cover)),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 9),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(144, 224, 224, 224),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 9.5),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Center(
                                child: Icon(
                                  Icons.mic,
                                  color: Colors.black26,
                                  size: 25,
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: ' Search',
                                    hintStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.2,
                                        color: Colors.black26),
                                    border: InputBorder.none),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.brown[300]),
                              child: Center(
                                child: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                  size: 35,
                                ),
                              ),
                            )
                          ]),
                    ),
                  ),
                ),
                Container(
                  /* margin: EdgeInsets.only(top: 0), */
                  height: 92,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: icons.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 25),
                        width: 130,
                        decoration: BoxDecoration(
                            color: Colors.brown[300],
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.brown.shade600,
                                blurRadius: 9,
                                offset: const Offset(0, 3),
                              ),
                            ]),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => AirportPage()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                icons[index],
                                color: Colors.white,
                                size: 25,
                              ),
                              Text(
                                data[index],
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2.8,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imageUrl.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () => (Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => DetailsScreen(
                                      name: names[index],
                                      image: imageUrl[index],
                                      description: cityDescription[index],
                                    )))),
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 5,
                          ),
                          width: 170,
                          height: 400,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage(imageUrl[index]),
                                  fit: BoxFit.cover)),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Stack(
                              children: [
                                Container(),
                                Positioned(
                                    bottom: 40,
                                    left: 10,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          color: Colors.brown[300],
                                        ),
                                        Text(
                                          names[index],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )),
                                Positioned(
                                    bottom: 20,
                                    left: 35,
                                    child: Row(
                                      children: [
                                        Text(
                                          cityArea[index],
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        )
                                      ],
                                    )),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage('assets/wide.jpg'),
                            fit: BoxFit.cover)),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Stack(children: [
                          Positioned(
                            child: Container(
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Center(
                                  child: Icon(
                                Icons.play_arrow,
                                size: 40,
                                color: Color(0xffbfac8c),
                              )),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  margin: EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular Places',
                        style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )),
                      ),
                      GestureDetector(
                        onTap: () => (Navigator.push(context,
                            MaterialPageRoute(builder: (_) => AllPlaces()))),
                        child: Text(
                          'See All',
                          style: GoogleFonts.ubuntu(
                              textStyle: TextStyle(color: Colors.grey)),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 90,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: places.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () => (Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => PlaceDetails(
                                        name: places[index],
                                        image: placesImage[index],
                                        description: placesDetails[index],
                                        location: placesLocation[index],
                                      )))),
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                    image: AssetImage(placesImage[index]),
                                    fit: BoxFit.cover)),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
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
