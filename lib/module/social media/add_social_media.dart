import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class AddSocialMedia extends StatefulWidget {
  const AddSocialMedia({Key? key}) : super(key: key);

  @override
  State<AddSocialMedia> createState() => _AddSocialMediaState();
}

class _AddSocialMediaState extends State<AddSocialMedia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Social Accounts",
          style: GoogleFonts.montserrat(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 80.0,
              ),
              Center(
                child: Text(
                  "Add social accounts",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              Center(
                child: Text(
                  "Add your social accounts for more security. \nYou will go directly to their site.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 34.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 48,
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
                            icon: FaIcon(FontAwesomeIcons.facebookF,
                                size: 15, color: Colors.blue[700]),
                            onPressed: () {},
                          )),
                      const Spacer(),
                      Text(
                        "Connect with Facebook".toUpperCase(),
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 18.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 48,
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
                            icon: const FaIcon(FontAwesomeIcons.google,
                                size: 15, color: Colors.black),
                            onPressed: () {},
                          )),
                      const Spacer(),
                      Text(
                        "Connect with google".toUpperCase(),
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Spacer()
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
