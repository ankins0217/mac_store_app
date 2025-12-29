import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login to the Account",
              style: GoogleFonts.getFont(
                'Lato',
                fontSize: 23,
                color: Colors.deepPurple,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.2,
              ),
            ),
            Text(
              "Explore the new world",
              style: GoogleFonts.getFont(
                'Lato',
                fontSize: 16,
                color: Colors.deepPurple,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.2,
              ),
            ),
            Image.asset(
              "assets/images/Illustration.png",
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
