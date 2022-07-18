import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'placeDetails.dart';

class AllPlaces extends StatefulWidget {
  const AllPlaces({Key? key}) : super(key: key);

  @override
  State<AllPlaces> createState() => _AllPlacesState();
}

class _AllPlacesState extends State<AllPlaces> {
  var _currentIndex = 0;
  final places = [
    'Iraqi National Museum',
    'The Abbasid Palace',
    'Shanashel Basrah',
    'Mosul Woods',
    'Taq Kasra',
    'Hatra',
    'Baghdad Tower',
    'Qushla',
    'Erbil Citadel',
    'Sawa Lake'
  ];

  final placesImage = [
    'assets/p2.jpg',
    'assets/p7.jpg',
    'assets/p3.jpg',
    'assets/p5.jpg',
    'assets/p6.jpg',
    'assets/p4.jpg',
    'assets/p1.jpg',
    'assets/p8.jpg',
    'assets/p9.jpg',
    'assets/p10.jpg',
  ];

  final placesDetails = [
    'The Iraq Museum is the national museum of Iraq, located in Baghdad. It is sometimes informally called the National Museum of Iraq, a recent phenomenon influenced by other nations\' naming of their national museums; The Iraq Museum\'s name is inspired by the name of the British Museum, however.',
    'The Abbasid Palace is situated in Baghdad overlooking the Tigris River.(Address: Maidan Square, Baghdad, Iraq).',
    'A row of traditional 19th century houses called Shanashels stands along a canal in Basra, Iraq. Abdul Latif Mandel House on the right has an intricate overhanging balcony and pointed windows.',
    'The Mosul forests are one of the Iraqi forests, established on the left coast of the city of Mosul, which was named at the time in 1954 on an area of one dunam. Stages until it reached an area of one dunam. Various types of trees were planted, such as eucalyptus, spinach, cinnabar, elm, pine and other types and varieties that suit the environmental conditions of the city.',
    'Tāq Kasrā, also transcribed as Taq-i Kisra or Taq-e Kesra or Ayvān-e Kesrā are the remains of a Sasanian-era Persian monument, dated to c. the 3rd to 6th-century, which is sometimes called the Arch of Ctesiphon. It is located near the modern town of Salman Pak, Iraq.',
    'Hatra was an ancient city in Upper Mesopotamia located in present-day eastern Nineveh Governorate in northern Iraq. The city lies 290 km northwest of Baghdad and 110 km southwest of Mosul.',
    'Baghdad Tower TV tower in Baghdad, Iraq. The tower opened in 1994 and replaced a communications tower destroyed in the Gulf War. A revolving restaurant and observation deck are located on the top floor. After the 2003 invasion of Iraq, the tower was occupied by American soldiers and was renamed as Baghdad Tower.',
    'The Qushla or The Qishleh is an Ottoman site in Baghdad, Iraq. The Qushla lays at Rusafa side of the Iraqi capital. The Ottoman Wali Namiq Pasha started the building in 1881. The building was finished after him by the next Wali Madhat Pasha.',
    'The Erbil Citadel, locally called Qelat is a tell or occupied mound, and the historical city centre of Erbil in the Kurdistan Region of Iraq. The citadel has been inscribed on the World Heritage List since 21 June 2014.',
    'Sawa Lake is an endorheic basin located in the Iraqi governorate of Muthanna near to the Euphrates River, some 23 kilometres to the west of Al-Samawa city. This lake has no inlet or outlet, but it draws water from the Euphrates through a system of joint cracks and fissures which transport water to aquifers beneath it.'
  ];

  final placesLocation = [
    'Baghdad',
    'Baghdad',
    'Basrah',
    'Mosul',
    'Baghdad',
    'Mosul',
    'Baghdad',
    'Baghdad',
    'Erbil',
    'Muthanna'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
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
              child: Container(
                margin: EdgeInsets.only(bottom: 13),
                child: Text(
                  'Popular Places',
                  style: GoogleFonts.ubuntu(
                      height: 1.2,
                      textStyle: TextStyle(
                          color: Colors.brown[300],
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            Container(
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: places.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 3,
                                blurRadius: 9,
                                offset: Offset(0, 3))
                          ]),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.circular(15), // Image border
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(50), // Image radius
                              child: Image.asset('${placesImage[index]}',
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${places[index]}',
                                style: GoogleFonts.ubuntu(
                                    height: 1.2,
                                    textStyle: TextStyle(
                                        color: Colors.brown[300],
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: 220,
                                child: Text(
                                  '${placesDetails[index]}',
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: new TextStyle(
                                    fontSize: 13.0,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              GestureDetector(
                                onTap: () => (Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => PlaceDetails(
                                              name: places[index],
                                              image: placesImage[index],
                                              description: placesDetails[index],
                                              location: placesLocation[index],
                                            )))),
                                child: Text(
                                  'Read more',
                                  style: GoogleFonts.ubuntu(
                                      textStyle: TextStyle(
                                          color: Colors.brown[300],
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      )),
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
