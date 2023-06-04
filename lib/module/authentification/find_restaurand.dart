import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class FindRestaurad extends StatefulWidget {
  const FindRestaurad({Key? key}) : super(key: key);

  @override
  State<FindRestaurad> createState() => _FindRestauradState();
}

class _FindRestauradState extends State<FindRestaurad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Center(
                child: Text(
                  "Find restaurants near you ",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Center(
                child: Text(
                  "Please enter your location or allow access to your location to find restaurants near you.",
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
                height: 48,
                width: MediaQuery.of(context).size.width,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.green,
                    side: const BorderSide(
                      color: Colors.green,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.location_on_rounded,
                        size: 24.0,
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        "Use current location",
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                child: TextFormField(
                  initialValue: null,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.location_on,
                        size: 24.0,
                      ),
                      prefixIconColor: Colors.grey,
                      suffixIcon: const Icon(
                        Icons.highlight_remove,
                        size: 24.0,
                      ),
                      suffixIconColor: Colors.grey,
                      filled: true,
                      fillColor: const Color(0xffFBFBFB),
                      hintText: "Search",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff8686861a)))),
                  onChanged: (value) {},
                ),
              ),
              SizedBox(
                height: 500,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 0,
                      color: Colors.white,
                      child: ListTile(
                        leading: const Icon(
                          Icons.location_on,
                          size: 24.0,
                        ),
                        title: Text(
                          "San Francisco",
                          style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        subtitle: Text(
                          "San Francisco",
                          style: GoogleFonts.montserrat(
                            fontSize: 13,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
