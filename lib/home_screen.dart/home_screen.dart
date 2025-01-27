import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:yumyumsnackys/DetailScreen/detail_screen_small.dart';

void main() {
  runApp(HomeScreen());
}

// erstmal die Struktur weiter machen ???!!!!!!!!! VERSTANDEN
// Column und Row verwenden mal gucken ob ich das hin bekommen
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override // heute weiter mit den erstellen der Columns und den Row(vertikales) Scrollen
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/bg_mainscreen.png"),
                ),
              ),
              height: double.infinity,
              width: double.infinity,
            ),
            Positioned(
              top: 80,
              right: 85,
              child: Text(
                "Choose Your Favorite",
                style: GoogleFonts.alata(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 120,
              right: 290,
              child: Text(
                "Snack",
                style: GoogleFonts.alata(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 170,
              left: 20,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white30),
                    height: 40,
                    width: 130,
                    child: Center(
                      child: Text(
                        "All catogorie",
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white30),
                    height: 40,
                    width: 100,
                    child: Center(
                      child: Text(
                        "Salty",
                        style: GoogleFonts.alata(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white30),
                    height: 40,
                    width: 100,
                    child: Center(
                      child: Text(
                        "Sweet",
                        style: GoogleFonts.alata(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white30),
                    height: 40,
                    width: 100,
                    child: Center(
                      child: Text(
                        "Deliciuse",
                        style: GoogleFonts.alata(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Positioned ist gut zu genauen aus tangieren von Objekten
            Positioned(
              top: 240,
              right: 20,
              left: 20,
              child: Opacity(
                opacity: 0.5,
                child: Center(
                  child: Image.asset(
                    "assets/images/cut_card.png",
                  ),
                ),
              ),
            ),
            Positioned(
              left: 40,
              top: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Angis Yummy Burger",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Delish vegan burger",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70),
                  ),
                  Text(
                    "that tastes like heaven",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 15,
                        width: 15,
                        child: Image.asset("assets/images/Vector.png"),
                      ),
                      Text(
                        "13.99",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          offset: Offset(0, -3),
                          spreadRadius: 0,
                          blurRadius: 24.0,
                          color: Color(0xFF9375B6),
                        ),
                        BoxShadow(
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                          blurRadius: 5.0,
                          color: Color(0xFFFFACE4),
                        ),
                        BoxShadow(
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                          blurRadius: 90,
                          color: Color.fromARGB(126, 234, 113, 198),
                        ),
                      ],
                      border: Border.all(
                        width: 1,
                        color: const Color.fromARGB(255, 233, 173, 193),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: const Color.fromARGB(255, 189, 61, 189),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xFF908Cf5),
                          Color(0xFFBB8DE1),
                        ],
                      ),
                    ),
                    height: 40,
                    width: 100,
                    child: Center(
                        child: Text(
                      "Add to order",
                      style: GoogleFonts.alata(color: Colors.white),
                    )),
                  )
                ],
              ),
            ),
            Positioned(
              height: 225,
              width: 225,
              top: 280,
              right: 30,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/burger.png"),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 320,
              right: 230,
              child: Text("We Recommend",
                  style: GoogleFonts.alata(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            Positioned(
              bottom: 30,
              left: 20,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(0, 255, 255, 255),
                      Color(0xFF908CF5),
                      Color(0xFF8C5BEA),
                    ],
                  ),
                ),
                height: 280,
                width: 200,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailScreenSmall()));
                      },
                      child: SizedBox(
                          height: 170,
                          width: 200,
                          child: Image.asset("assets/images/cupkake_cat.png")),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 100,
              left: 40,
              child: SizedBox(
                height: 20,
                child: Column(
                  children: [
                    Text(
                      "Moglis Cup",
                      style: GoogleFonts.alata(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 80,
              left: 40,
              child: SizedBox(
                height: 20,
                child: Column(
                  children: [
                    Text(
                      "Strawberry ice cream",
                      style: GoogleFonts.alata(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              left: 40,
              child: Row(
                children: [
                  SizedBox(
                      height: 15,
                      width: 15,
                      child: Image.asset("assets/images/Vector.png")),
                  Text("8.99",
                      style:
                          GoogleFonts.alata(fontSize: 15, color: Colors.white)),
                  SizedBox(
                    width: 70,
                  ),
                  Text("200",
                      style: GoogleFonts.alata(
                          fontSize: 15, color: Colors.white54))
                ],
              ),
            ),
            Positioned(
              bottom: 30,
              right: -45,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(0, 255, 255, 255),
                      Color(0xFF908CF5),
                      Color(0xFF8C5BEA),
                    ],
                  ),
                ),
                height: 280,
                width: 200,
                child: Column(
                  children: [
                    SizedBox(
                      height: 170,
                      width: 200,
                      child: Image.asset("assets/images/icecream.png"),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 100,
              right: 70,
              child: SizedBox(
                height: 20,
                child: Column(
                  children: [
                    Text(
                      "Balus Cup",
                      style: GoogleFonts.alata(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 80,
              right: 10,
              child: SizedBox(
                height: 20,
                child: Column(
                  children: [
                    Text(
                      "Pistachio ice cream",
                      style: GoogleFonts.alata(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              right: -8,
              child: Row(
                children: [
                  SizedBox(
                      height: 15,
                      width: 15,
                      child: Image.asset("assets/images/Vector.png")),
                  Text("8.99",
                      style:
                          GoogleFonts.alata(fontSize: 15, color: Colors.white)),
                  SizedBox(
                    width: 70,
                  ),
                  Text("100",
                      style: GoogleFonts.alata(
                          fontSize: 15, color: Colors.white54))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
