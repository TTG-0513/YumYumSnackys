import 'package:flutter/material.dart';
import 'package:yumyumsnackys/FeatureOrdner/order_now_button.dart';
import 'package:yumyumsnackys/home_screen.dart/home_screen.dart';

void main() {
  runApp(YumYumSnackyApp());
}

class YumYumSnackyApp extends StatelessWidget {
  const YumYumSnackyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: StartApp());
  }
}

// am besten auf I Phon16 abspielen.
class StartApp extends StatelessWidget {
  const StartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/bg_startscreen.png"),
              ),
            ),
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned(
            height: 645,
            width: 510,
            bottom: 195,
            left: 0,
            child: Center(
              child: Image.asset("assets/images/cupcake_chick.png"),
            ),
          ),
          Positioned(
            height: 500,
            bottom: 60,
            right: -5,
            child: Center(
              child: Image.asset(
                "assets/images/snack_snack.png",
                color: Colors.white30,
              ),
            ),
          ),
          Positioned(
            bottom: 230,
            left: 50,
            child: SizedBox(
              height: 100,
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      "Feeling Snackish Today?",
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                  ),
                  Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      "Explore Angis most popular snack selecton and get instantly happy",
                      style: TextStyle(
                          color: Color.fromARGB(188, 255, 255, 255),
                          fontSize: 13),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            left: 20,
            right: 20,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white10,
              ),
              height: 250,
              width: 380,
            ),
          ),
          Positioned(
            bottom: 160,
            right: 100,
            child: Center(
              child: OrderNowButton(),
            ),
          ),
        ],
      ),
    );
  }
}
