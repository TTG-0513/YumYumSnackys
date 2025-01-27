import 'package:flutter/material.dart';

void main() {
  runApp(ThankYouOrder());
}

class ThankYouOrder extends StatelessWidget {
  const ThankYouOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(
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
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Vielen Dank",
                      style: TextStyle(
                          shadows: <Shadow>[
                            Shadow(
                                offset: Offset(0, -4),
                                blurRadius: 20.0,
                                color: const Color.fromARGB(158, 24, 23, 23))
                          ],
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30),
                    ),
                    Text(
                      "für ihren Einkauf",
                      style: TextStyle(
                          shadows: <Shadow>[
                            Shadow(
                                offset: Offset(0, 0),
                                blurRadius: 20.0,
                                color: const Color.fromARGB(243, 202, 19, 234))
                          ],
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30),
                    ),
                    Text(
                      "bei YumYumSnackys",
                      style: TextStyle(
                          shadows: <Shadow>[
                            Shadow(
                                offset: Offset(0, 0),
                                blurRadius: 20.0,
                                color: const Color.fromARGB(243, 202, 19, 234))
                          ],
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SizedBox(
                          height: 250,
                          width: 250,
                          child: Image.asset("assets/images/burger.png")),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
