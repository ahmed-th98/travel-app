// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaceDetails extends StatefulWidget {
  
  int people = 1;
  String name;
  String image;
  String description;
  String location;

  PlaceDetails({
    required this.name,
    required this.image,
    required this.description,
    required this.location,
  });

  @override
  State<PlaceDetails> createState() => _PlaceDetailsState();
}

class _PlaceDetailsState extends State<PlaceDetails> {
  bool favorite = false;
  int people = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Image.asset(
                        '${widget.image}',
                        height: MediaQuery.of(context).size.height / 1,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        bottom: -20,
                        child: Container(
                          padding: EdgeInsets.all(25),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40),
                              )),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Container(
                                  width: 40,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                    color: Colors.brown,
                                    width: 1.0,
                                  )),
                                ),
                              ),
                              Text(
                                '${widget.name}',
                                style: GoogleFonts.ubuntu(
                                    height: 1.2,
                                    textStyle: TextStyle(
                                        color: Colors.brown[300],
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold)),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.location_on_sharp, color: Colors.brown[300], size: 17,),

                                  Text(
                                    '${widget.location}',
                                    style: TextStyle(
                                        color: Colors.brown[300],
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),

                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.amber),
                                  Icon(Icons.star, color: Colors.amber),
                                  Icon(Icons.star, color: Colors.amber),
                                  Icon(Icons.star, color: Colors.amber),
                                  Icon(Icons.star_border_outlined,
                                      color: Colors.amber),
                                  SizedBox(
                                    width: 7.0,
                                  ),
                                  Text('4.0',
                                      style: TextStyle(
                                        color: Colors.brown[300],
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        favorite = !favorite;
                                      });
                                    },
                                    child: Icon(
                                        !favorite
                                            ? Icons.favorite_border_rounded
                                            : Icons.favorite,
                                        color: Colors.brown[300]),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Description',
                                style: TextStyle(
                                    color: Colors.brown[300],
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                        text: '${widget.description}',
                                        style: TextStyle(
                                            wordSpacing: 1,
                                            color: Color.fromARGB(165, 0, 0, 0),
                                            fontSize: 17)),
                                  ],
                                ),
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              /* Text(
                                'Number of People',
                                style: TextStyle(
                                    color: Colors.brown[300],
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 11,
                              ),
                              Row(
                                children: [
                                  MaterialButton(
                                      minWidth: 1,
                                      onPressed: () {
                                        setState(() {
                                          people--;
                                        });
                                      },
                                      child: Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color: Color.fromARGB(
                                                    101, 121, 85, 72),
                                                width: 3,
                                              )),
                                          child: Icon(
                                            Icons.remove,
                                            size: 25,
                                            color: Colors.brown[300],
                                          ))),
                                  Text(
                                    '${people}',
                                    style: TextStyle(
                                        color: Colors.brown[300],
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  MaterialButton(
                                      minWidth: 1,
                                      onPressed: () {
                                        setState(() {
                                          people++;
                                        });
                                      },
                                      child: Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color: Color.fromARGB(
                                                    101, 121, 85, 72),
                                                width: 3,
                                              )),
                                          child: Icon(
                                            Icons.add,
                                            size: 25,
                                            color: Colors.brown[300],
                                          ))),
                                ],
                              ), */
                              
                              Center(
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: MaterialButton(
                                      onPressed: () {},
                                      color: Colors.brown[300],
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            'Book Trip Now',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          Icon(
                                            Icons
                                                .keyboard_double_arrow_right_sharp,
                                            color: Colors.white,
                                          ),
                                        ],
                                      )),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
