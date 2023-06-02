import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselScreen extends StatefulWidget {
  const CarouselScreen({super.key});

  @override
  _CarouselScreenState createState() => _CarouselScreenState();
}

class _CarouselScreenState extends State<CarouselScreen> {
  final CarouselController _carouselController = CarouselController();

  void moveToIndex(int index) {
    _carouselController.animateToPage(index);
  }

  List<String> exampleImage = [
    "https://images.unsplash.com/photo-1578500494198-246f612d3b3d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    "https://images.unsplash.com/photo-1604074131665-7a4b13870ab4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
    "https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carousel Example'),
      ),
      body: Column(
        children: [
          //TEMPLATE m_carousel_image
          //CarouselController _carouselController = CarouselController();
          //void moveToIndex(int index) {
          //_carouselController.animateToPage(index);
          //}

          Stack(
            children: [
              CarouselSlider(
                carouselController: _carouselController,
                options: CarouselOptions(
                  height: 300,
                  aspectRatio: 16 / 9,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.easeIn,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {},
                  scrollDirection: Axis.horizontal,
                ),
                items: List.generate(exampleImage.length, (index) {
                  String item = exampleImage[index];
                  return Container(
                    height: 160.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          item,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  height: 30.0,
                  width: 100.0,
                  margin: const EdgeInsets.only(
                    right: 10.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        3,
                        (index) => InkWell(
                            onTap: () {
                              moveToIndex(index);
                            },
                            child: Container(
                              height: 20,
                              width: 20,
                              margin: const EdgeInsets.only(
                                left: 10.0,
                              ),
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                              ),
                            ))),
                  ),
                ),
              ),
            ],
          ),
          //#END
        ],
      ),
    );
  }
}
