import 'package:flutter/material.dart';
import 'package:yumyumsnackys/feature_order.dart/order_now_button.dart';

class StartApp extends StatelessWidget {
  const StartApp({super.key});

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
              bottom: 100,
              left: 20,
              right: 20,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white24,
                ),
                height: 250,
                width: 380,
              ),
            ),
            Positioned(
                bottom: 160,
                right: 100,
                child: Container(
                    child: Center(child: OrderNowButton()),
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.pinkAccent,
                    ))),
          ],
        ),
      ),
    );
  }
}
