import 'package:flutter/material.dart';

import 'package:yumyumsnackys/home_screen.dart/home_screen.dart';

class OrderNowButton extends StatelessWidget {
  const OrderNowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CardTheme(
      color: Colors.white24,
      elevation: 8,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeScreen()));
        },
        child: Text(
          "Order Now",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white70),
        ),
      ),
    );
  }
}
