import 'package:flutter/material.dart';
import 'package:yumyumsnackys/DetailScreen/detail_screen_small.dart';
import 'package:yumyumsnackys/DetailScreen/detail_screen_large.dart';
import 'package:yumyumsnackys/Dankschön/thank_you_for_order.dart';

void main() {
  runApp(DetailScreenMedium());
}

class DetailScreenMedium extends StatelessWidget {
  const DetailScreenMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/Drawer.png"),
                ),
              ),
              height: double.infinity,
              width: double.infinity,
            ),
            Positioned(
              bottom: 55,
              right: 20,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Color(0xFFF69EA3), Color(0xFFE970C4)]),
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                width: 355,
                height: 55,
                child: Positioned(
                  bottom: 50,
                  right: 100,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ThankYouOrder()));
                          },
                          child: Text(
                            "Add to order for",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                        SizedBox(width: 6),
                        SizedBox(
                            height: 15,
                            width: 15,
                            child: Image.asset("assets/images/Vector.png")),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ThankYouOrder()));
                            },
                            child: Text(
                              "9.99",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 140,
              left: 30,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                    color: const Color.fromARGB(255, 57, 56, 56)),
                height: 35,
                width: 180,
              ),
            ),
            Positioned(
              bottom: 140,
              left: 30,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                    color: const Color.fromARGB(50, 207, 113, 180)),
                height: 35,
                width: 70,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreenSmall(),
                      ),
                    );
                  },
                  style: ButtonStyle(),
                  child: Center(
                    child: Text(
                      'small',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 140,
              left: 80,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                    color: const Color.fromARGB(50, 207, 113, 180)),
                height: 35,
                width: 80,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(),
                  child: Center(
                    child: Text(
                      'medium',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 140,
              left: 140,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                    color: const Color.fromARGB(50, 207, 113, 180)),
                height: 35,
                width: 70,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreenLarge()));
                  },
                  style: ButtonStyle(),
                  child: Center(
                      child: Text(
                    'large',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                ),
              ),
            ),
            Positioned(
              bottom: 373,
              left: 160,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                    color: const Color.fromARGB(255, 55, 43, 43)),
                height: 35,
                width: 90,
              ),
            ),
            Positioned(
              bottom: 380,
              left: 175,
              child: SizedBox(
                child: Row(
                  children: [
                    SizedBox(
                      height: 15,
                      width: 15,
                      child: Image.asset("assets/images/Vector.png"),
                    ),
                    Text(
                      "9.99",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 111,
              right: 4,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.white,
                icon: Icon(Icons.close),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
