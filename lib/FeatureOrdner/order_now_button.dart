import 'package:flutter/material.dart';
import 'package:yumyumsnackys/DetailScreen/detail_screen_large.dart';
import 'package:yumyumsnackys/DetailScreen/detail_screen_medium.dart';
import 'package:yumyumsnackys/DetailScreen/detail_screen_small.dart';

import 'package:yumyumsnackys/home_screen.dart/home_screen.dart';

class OrderNowButton extends StatelessWidget {
  const OrderNowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      height: 60,
      width: 220,
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
            blurRadius: 2.0,
            color: Color(0xFFFFACE4),
          ),
          BoxShadow(
            offset: Offset(0, 30),
            spreadRadius: 0,
            blurRadius: 90,
            color: Color.fromARGB(126, 234, 113, 198),
          ),
        ],
        border: Border.all(
          width: 0,
          color: Color.fromARGB(125, 255, 255, 255),
        ),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFFF69EA3),
            Color(0xFFE970C4),
          ],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
          );
        },
        child: Center(
          child: Text(
            "Order Now",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

class LargeButton extends StatelessWidget {
  const LargeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CardTheme(
      color: Colors.white24,
      elevation: 8,
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailScreenLarge()));
          },
          child: Text(
            'large',
            style: TextStyle(
                fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
          )),
    );
  }
}

class MediumButton extends StatelessWidget {
  const MediumButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CardTheme(
      color: Colors.white24,
      elevation: 8,
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailScreenMedium()));
          },
          child: Text(
            'medium',
            style: TextStyle(
                fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
          )),
    );
  }
}

class SmallButton extends StatelessWidget {
  const SmallButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CardTheme(
      color: Colors.white24,
      elevation: 8,
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailScreenSmall()));
          },
          child: Text(
            'small',
            style: TextStyle(
                fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
          )),
    );
  }
}
