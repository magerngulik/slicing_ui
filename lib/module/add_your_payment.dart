import 'package:google_fonts/google_fonts.dart';
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddYourPayment extends StatefulWidget {
  const AddYourPayment({Key? key}) : super(key: key);

  @override
  State<AddYourPayment> createState() => _AddYourPaymentState();
}

class _AddYourPaymentState extends State<AddYourPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              "Add your payment metdhods",
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Text(
              "this card will only be chargerd when your place an order",
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextFormField(
                initialValue: null,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[100],
                    hintText: "4565-4543-4543",
                    hintStyle: GoogleFonts.montserrat(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                    prefixIcon: const Icon(
                      Icons.credit_card,
                      size: 24.0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        borderSide: BorderSide(color: Colors.grey[200]!))),
                onChanged: (value) {},
              ),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: Container(
                    child: TextFormField(
                      initialValue: null,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[100],
                          hintText: "MM/YY",
                          hintStyle: GoogleFonts.montserrat(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                              borderSide:
                                  BorderSide(color: Colors.grey[200]!))),
                      onChanged: (value) {},
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30.0,
                ),
                Expanded(
                  child: Container(
                    child: TextFormField(
                      initialValue: null,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[100],
                          hintText: "CYC",
                          hintStyle: GoogleFonts.montserrat(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                              borderSide:
                                  BorderSide(color: Colors.grey[200]!))),
                      onChanged: (value) {},
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "ADD CARD",
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: const BorderSide(color: Colors.black38)),
                ),
                onPressed: () {},
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.credit_card,
                      size: 20.0,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "SCAN CARD",
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
