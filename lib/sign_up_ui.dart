import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math'; 

class SignUpPage extends StatefulWidget {
  const SignUpPage ({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String generatedPassword = '';
  void generatePassword() {
    int length = 10;
    bool includeNumberLetter = true;
    bool includeSpecialChars = true;

    const String numbersLetter = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    const String specialChars = '@\$&';

    String character = '';

    if (includeNumberLetter) character += numbersLetter;
    if (includeSpecialChars) character += specialChars;

    String password = '';

    for (int i = 0; i < length; i++) {
      int randomIndex = Random().nextInt(character.length);
      password += character[randomIndex];
    }

    setState(() {
      generatedPassword = password;
    });
  }
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "New User? Get Started Now",
                style: TextStyle(fontSize: 24, color: Color(0xff4F4F4F)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 69,top: 10,right: 69,bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/google.png",
                      height: 40,
                      width: 26,
                    ),
                    Image.asset(
                      "assets/facebook.png",
                      height: 27,
                      width: 26,
                    ),
                    Image.asset(
                      "assets/twitter.png",
                      height: 26,
                      width: 25,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/Line 1.png",
                  ),
                  Image.asset(
                    "assets/OR.png",
                    height: 28,
                    width: 37
                  ),
                  Image.asset(
                    "assets/Line 1.png",
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30,top: 10,bottom: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Email ID*",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 356,
                      height: 35,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            )
                          ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Password*",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 36,
                      width: 356,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.remove_red_eye, color: Colors.black, size: 25),
                            onPressed: () {},
                          ),
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        controller: TextEditingController(text: generatedPassword),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 26,right: 26),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 174,
                      height: 44,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                          ),
                          backgroundColor: const Color(0xff2F80ED)
                        ),
                        onPressed: () {},
                        child: Text(
                          "SIGN UP",
                          style: GoogleFonts.cambo(
                            fontSize: 22,
                            color: Colors.white
                          )
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 168,
                      height: 44,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                          ),
                          backgroundColor: const Color(0xff2F80ED)
                        ),
                        onPressed: generatePassword,
                        child: Text(
                          "Generate",
                          style: GoogleFonts.cambo(
                            fontSize: 22,
                            color: Colors.white
                          )
                        ),
                      ),
                    ),
                  ],  
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Terms and Conditions | Privacy Policy",
                style: TextStyle(
                  color: Color(0xff4F4F4F),
                  fontSize: 12
                ),
              )
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
