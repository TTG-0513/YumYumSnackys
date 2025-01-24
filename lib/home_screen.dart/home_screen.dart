import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
            // Positioned ist gut zu genauen aus tangieren von Objekten
            Positioned(
              top: 240,
              right: 20,
              left: 20,
              child: Center(
                child: Image.asset(
                  "assets/images/cut_card.png",
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
                        color: Colors.white70),
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
                  Text(
                    "A 13.99",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 40,
                    width: 100,
                    color: const Color.fromARGB(255, 227, 106, 227),
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
          ],
        ),
      ),
    );
  }
}
