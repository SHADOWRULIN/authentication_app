import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/top_banner.png",
            height: 234,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Column(
            children: [
              Text(
                "ANGLE SURE",
                style: GoogleFonts.akayaTelivigala(
                  fontSize: 36,
                  color: const Color(0xff2F80ED),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Image.asset(
                "assets/logo.png",
                width: 220,
                height: 200,
              ),
            ],
          ),
          Image.asset(
            "assets/bottom_banner.png",
            width: double.infinity,
            height: 264,
            fit: BoxFit.fill,
          )
        ],
      ),
    );
  }
}