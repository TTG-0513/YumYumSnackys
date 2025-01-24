import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(
        "assets/images/bg_startscreen.png",
      ),
    );
  }
}

class CupCakeChicken extends StatelessWidget {
  const CupCakeChicken({super.key});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage("assets/images/cupcake_chick.png"),
    );
  }
}
