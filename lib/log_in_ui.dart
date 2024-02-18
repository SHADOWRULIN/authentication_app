import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

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
                "Sign In To Continue",
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
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Email ID*",
                      style: TextStyle(
                        fontSize: 16,
                      ),
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
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Password*",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Forgot Password?",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 36,
                      width: 356,
                      child: TextField(
                        obscureText: true,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            )
                          ),
                        keyboardType: TextInputType.visiblePassword,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 44,
                width: 356,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    ),
                    backgroundColor: const Color(0xff2F80ED)
                  ),
                  onPressed: () {},
                  child: Text(
                    "SIGN IN",
                    style: GoogleFonts.cambo(
                      fontSize: 22,
                      color: Colors.white
                    )
                  ),
                ),
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
