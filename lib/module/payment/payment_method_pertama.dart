// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Payment Methods",
          style: GoogleFonts.montserrat(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Card(
              elevation: 0,
              child: ListTile(
                leading: Container(
                  width: 48,
                  height: 34,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                    border: Border.all(
                      width: 1.0,
                      color: Colors.grey[900]!,
                    ),
                  ),
                  child: FractionallySizedBox(
                    heightFactor: 0.8,
                    widthFactor: 0.5,
                    child: Image.asset(
                      "assets/img/paypal.png",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                title: Text(
                  "PayPal",
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(
                  "Deafult Payment",
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 24.0,
                ),
              ),
            ),
            Card(
              elevation: 0,
              child: ListTile(
                leading: Container(
                  width: 48,
                  height: 34,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                    border: Border.all(
                      width: 1.0,
                      color: Colors.grey[900]!,
                    ),
                  ),
                  child: FractionallySizedBox(
                    heightFactor: 0.8,
                    widthFactor: 0.5,
                    child: Image.asset(
                      "assets/img/money.png",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                title: Text(
                  "Master Card",
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(
                  "Deafult Payment",
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 24.0,
                ),
              ),
            ),
            Card(
              elevation: 0,
              child: ListTile(
                leading: Container(
                  width: 48,
                  height: 34,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                  ),
                  child: Image.asset(
                    "assets/img/visa.png",
                    fit: BoxFit.fitWidth,
                  ),
                ),
                title: Text(
                  "Visa",
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(
                  "Deafult Payment",
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 24.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
