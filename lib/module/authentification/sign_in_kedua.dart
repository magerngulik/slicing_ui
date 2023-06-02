import 'package:google_fonts/google_fonts.dart';
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInKedua extends StatefulWidget {
  const SignInKedua({Key? key}) : super(key: key);

  @override
  State<SignInKedua> createState() => _SignInKeduaState();
}

class _SignInKeduaState extends State<SignInKedua> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Sign In",
          style: GoogleFonts.montserrat(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 41.0,
              ),
              Text(
                "Welcome to",
                textAlign: TextAlign.left,
                style: GoogleFonts.montserrat(
                  fontSize: 34,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Enter your Phone number or Email ",
                textAlign: TextAlign.left,
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "address for sign in. Enjoy your food :) ",
                textAlign: TextAlign.left,
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 34.0,
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 10.0,
                ),
                child: Text(
                  "EMAIL ADDRESS",
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(),
                child: TextFormField(
                  initialValue: null,
                  decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.check,
                        size: 24.0,
                        color: Colors.green,
                      ),
                      filled: true,
                      fillColor: const Color(0xffFBFBFB),
                      hintText: "Username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              const BorderSide(color: Color(0xffF3F2F2)))),
                  onChanged: (value) {},
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 10.0,
                ),
                child: Text(
                  "PASSWORD",
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(),
                child: TextFormField(
                  initialValue: null,
                  decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.remove_red_eye,
                        size: 24.0,
                        color: Colors.green,
                      ),
                      filled: true,
                      fillColor: const Color(0xffFBFBFB),
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              const BorderSide(color: Color(0xffF3F2F2)))),
                  onChanged: (value) {},
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                child: Center(
                  child: Text(
                    "Forget Password?",
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 48,
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff22A45D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Sign in",
                    style: GoogleFonts.montserrat(
                      textStyle: Theme.of(context).textTheme.headlineMedium,
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 24.0),
                    child: Center(
                      child: Text(
                        "Don’t have account? ",
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 24.0),
                    child: Center(
                      child: Text(
                        "Create new account.",
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 24.0),
                child: Center(
                  child: Text(
                    "Or",
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 48,
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff395998),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 16.0,
                      ),
                      Container(
                          height: 30.0,
                          width: 30.0,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                8.0,
                              ),
                            ),
                          ),
                          child: IconButton(
                            icon: const FaIcon(FontAwesomeIcons.facebookF,
                                size: 15, color: Colors.blue),
                            onPressed: () {},
                          )),
                      const SizedBox(
                        width: 30.0,
                      ),
                      Text(
                        "Connect with Facebook",
                        style: GoogleFonts.montserrat(
                          textStyle: Theme.of(context).textTheme.headlineMedium,
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 48,
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff4285F4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 16.0,
                      ),
                      //#TEMPLATE image_assets_contrad
                      Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              8.0,
                            ),
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: FractionallySizedBox(
                            widthFactor: 0.8,
                            heightFactor: 0.8,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/img/google.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      //#END
                      const SizedBox(
                        width: 30.0,
                      ),
                      Text(
                        "Connect with Google",
                        style: GoogleFonts.montserrat(
                          textStyle: Theme.of(context).textTheme.headlineMedium,
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
