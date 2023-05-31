import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class WalkTrought extends StatefulWidget {
  const WalkTrought({Key? key}) : super(key: key);

  @override
  State<WalkTrought> createState() => _WalkTroughtState();
}

class _WalkTroughtState extends State<WalkTrought> {
  CarouselController _carouselController = CarouselController();
  void moveToIndex(int index) {
    _carouselController.animateToPage(index);
  }

  List<Map> worktrought = [
    {
      "image":
          "https://images.unsplash.com/photo-1484517586036-ed3db9e3749e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "title": "All your favorite",
      "message":
          "Order from the best local restaurants with easy, on-demand delivery."
    },
    {
      "image":
          "https://images.unsplash.com/photo-1484517586036-ed3db9e3749e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "title": "Free delivery offers",
      "message":
          "Free delivery for new customers via Apple Pay and others payment methods."
    },
    {
      "image":
          "https://images.unsplash.com/photo-1484517586036-ed3db9e3749e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "title": "Choose your food",
      "message":
          "Easily find your type of food craving and you’ll get delivery in wide range."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 88.0,
            ),
            CarouselSlider(
              carouselController: _carouselController,
              options: CarouselOptions(
                height: 500,
                aspectRatio: 16 / 9,
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: false,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.easeIn,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {},
                scrollDirection: Axis.horizontal,
              ),
              items: List.generate(3, (index) {
                var item1 = worktrought[index];
                return Column(
                  children: [
                    Container(
                      height: 300.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("${item1['image']}"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    SizedBox(
                      child: Column(
                        children: [
                          Text(
                            "${item1['title']}",
                            style: GoogleFonts.montserrat(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 33.0),
                            child: Text(
                              "${item1['message']}",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }),
            ),
            Container(
              height: 30.0,
              width: 100.0,
              margin: const EdgeInsets.only(
                right: 10.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(worktrought.length, (index) {
                  return InkWell(
                    onTap: () {
                      moveToIndex(index);
                    },
                    child: Container(
                      height: 5,
                      width: 9,
                      margin: const EdgeInsets.only(
                        left: 8.0,
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(
              height: 70.0,
            ),
            Spacer(),
            Container(
              height: 48,
              margin: const EdgeInsets.all(20.0),
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff22A45D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "GET STARTED",
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 80.0,
            ),
          ],
        ),
      ),
    );
  }
}
