import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel/screens/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final Color mainColor = Colors.teal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: Color(0xffbfac8c),
            image: DecorationImage(
              image: AssetImage('assets/test.jpg'),
            )),
        child: Container(
          color: Colors.black38,
          child: Stack(children: <Widget>[
            
            Positioned(
                bottom: 55,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => HomePage()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Travel!!',
                              style: GoogleFonts.caveat(
                                  textStyle: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 37,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1)),
                            ),
                            Text(
                              'Before you run out of time..',
                              style: GoogleFonts.caveat(
                                  textStyle: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 22,
                                      letterSpacing: 1)),
                            ),
                          ],
                        ),
                        Container(
                          height: 55,
                          width: 55,
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
                      ],
                    ),
                  ),
                )),
          ]),
        ),
      ),
    );
  }
}
