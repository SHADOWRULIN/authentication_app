import 'package:flutter/material.dart';
import 'package:flutter_app_design/sign_up_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  void switchToSignUpPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SignUpPage()
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/top_banner.png",
                height: 234,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Positioned(
                bottom: 140,
                right: 30,
                child: SizedBox(
                  height: 40,
                  width: 122,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    onPressed: switchToSignUpPage,
                    child: Text(
                      'SIGN UP',
                      style: GoogleFonts.cambo(
                          fontSize: 18, color: const Color(0xff2F80ED)),
                    )
                  ),
                )
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sign In To Continue",
                style: TextStyle(fontSize: 24, color: Color(0xff4F4F4F)),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 69, top: 10, right: 69, bottom: 10),
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
                  Image.asset("assets/OR.png", height: 28, width: 37),
                  Image.asset(
                    "assets/Line 1.png",
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 30, right: 30, top: 10, bottom: 30),
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
                        )),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    const SizedBox(
                      height: 10,
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
                            ),
                            suffixIcon: const Icon(
                              Icons.remove_red_eye,
                              color: Colors.black,
                              size: 25,
                            )),
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
                          borderRadius: BorderRadius.circular(5)),
                      backgroundColor: const Color(0xff2F80ED)),
                  onPressed: () {},
                  child: Text("SIGN IN",
                      style:
                          GoogleFonts.cambo(fontSize: 22, color: Colors.white)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Terms and Conditions | Privacy Policy",
                style: TextStyle(color: Color(0xff4F4F4F), fontSize: 12),
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
