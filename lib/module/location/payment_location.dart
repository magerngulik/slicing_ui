import 'package:google_fonts/google_fonts.dart';
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class PaymentLocation extends StatefulWidget {
  const PaymentLocation({Key? key}) : super(key: key);

  @override
  State<PaymentLocation> createState() => _PaymentLocationState();
}

class _PaymentLocationState extends State<PaymentLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Payment Methods",
          style: GoogleFonts.montserrat(
            fontSize: 16,
            fontWeight: FontWeight.bold,
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
                height: 24.0,
              ),
              Container(
                child: TextFormField(
                  initialValue: null,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffFBFBFB),
                      hintText: "Search new address",
                      hintStyle: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      prefixIcon: const Icon(
                        Icons.location_on,
                        size: 24.0,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              const BorderSide(color: Color(0xff868686)))),
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              Row(
                children: [
                  Text(
                    "Recent address".toUpperCase(),
                    style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff868686)),
                  ),
                  const Spacer(),
                  Text(
                    "Clear all".toUpperCase(),
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  var item = {};
                  return Container(
                    margin: const EdgeInsets.only(
                      bottom: 18.0,
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          size: 24.0,
                          color: Color(0xff868686),
                        ),
                        const SizedBox(
                          width: 17.0,
                        ),
                        Text(
                          "San Francisco, CA",
                          style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
