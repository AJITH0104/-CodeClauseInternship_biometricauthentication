import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class secondpg extends StatefulWidget {
  const secondpg({super.key});

  @override
  State<secondpg> createState() => _secondpgState();
}

class _secondpgState extends State<secondpg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF192359),
      body: Center(
        child: Text(
          "page 2 after biometric authentication",
          style: GoogleFonts.playfairDisplay(color: Colors.white, fontSize: 40),
        ),
      ),
    );
  }
}
