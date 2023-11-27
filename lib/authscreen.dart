import 'package:biometrics/auth.dart';
import 'package:biometrics/secondpg.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class authscreen extends StatefulWidget {
  const authscreen({super.key});

  @override
  State<authscreen> createState() => _authscreenState();
}

class _authscreenState extends State<authscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF192359),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              'Task 1 Login to the app using biometric authentication',
              style: GoogleFonts.playfairDisplay(
                  color: Colors.white, fontSize: 40),
            ),
            SizedBox(
              height: 27,
            ),
            Text(
              'use your fingerprint to login to the app',
              style: GoogleFonts.playfairDisplay(
                  color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: 27,
            ),
            Divider(
              color: Colors.white,
              thickness: 1,
            ),
            SizedBox(
              height: 27,
            ),
            ElevatedButton.icon(
              onPressed: () async {
                bool sol = await auth.authenticate();
                if (sol) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => secondpg()));
                }
              },
              icon: Icon(
                Icons.fingerprint,
              ),
              label: Text("Authenticate"),
            ),
          ],
        ),
      )),
    );
  }
}
