import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyFonts extends StatelessWidget {
  const MyFonts({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("hallo", style: GoogleFonts.montserrat());
  }
}
