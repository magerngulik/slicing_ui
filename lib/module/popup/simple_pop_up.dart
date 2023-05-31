import 'package:google_fonts/google_fonts.dart';
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SimpePopUp extends StatefulWidget {
  const SimpePopUp({Key? key}) : super(key: key);

  @override
  State<SimpePopUp> createState() => _SimpePopUpState();
}

class _SimpePopUpState extends State<SimpePopUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      content: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width,
                        child: Card(
                          elevation: 0,
                          color: Colors.transparent,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 20,
                                right: 0,
                                left: 0,
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.25,
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        16.0,
                                      ),
                                    ),
                                  ),
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 2.0),
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 30.0,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5.0),
                                          child: Text(
                                            "Your Pleace the Order Successfully",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.montserrat(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline4,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20.0,
                                        ),
                                        Container(
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 15.0),
                                          child: Text(
                                            "Your Pleace the Order Successfully, You will get your food within 25 minutes, Thanks for using our services. Enjoy food :) ",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.montserrat(
                                                height: 1.5),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 30.0,
                                        ),
                                        Container(
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 12.0),
                                          child: Text(
                                            "Keep Browsing",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.montserrat(
                                              color: Colors.green,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Image.asset(
                                  "assets/img/checklist.png",
                                  width: 50.0,
                                  height: 50.0,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              child: const Text('Show Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
