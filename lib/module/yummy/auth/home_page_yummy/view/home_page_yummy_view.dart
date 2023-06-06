// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:slicing/core.dart';

import '../widget/card_by_hading.dart';

class HomePageYummyView extends StatefulWidget {
  const HomePageYummyView({Key? key}) : super(key: key);

  Widget build(context, HomePageYummyController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Delivery to",
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
                color: Colors.green,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "San Francisco",
                  style: TextStyle(
                    fontSize: 22.0,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 24.0,
                ),
              ],
            ),
          ],
        ),
        actions: const [
          Text(
            "Filter",
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            width: 10.0,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              BannerIndicator(image: "https://picsum.photos/1000"),
              const SizedBox(
                height: 38.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Text(
                        "Feature Pathers",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                        ),
                      ),
                    ),
                    Text(
                      "See all",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.green,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              SizedBox(
                height: 254,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CardByHeading(
                      image: "https://picsum.photos/1000",
                      location: "pekanbaru,Sukajadi",
                      price: "Free dileveri",
                      rating: "4.5",
                      time: "25 Min",
                      title: "Mario Italio",
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 180.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1533050487297-09b450131914?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 22.0,
              ),
              headingTag(title: "Best Picks Restaurants by team"),
              const SizedBox(
                height: 24.0,
              ),
              SizedBox(
                height: 254.0,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) {
                    return CardByHeading(
                      image: "https://picsum.photos/1000",
                      location: "pekanbaru,Sukajadi",
                      price: "Free dileveri",
                      rating: "4.5",
                      time: "25 Min",
                      title: "Mario Italio",
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              headingTag(title: "All Restaurants"),
              const SizedBox(
                height: 24.0,
              ),
              ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  var item = {};
                  return CardAllRestaurats(
                    image: "https://picsum.photos/1000",
                    category: "Chinese American Deshi",
                    delevery: "free",
                    ratting: "4.3",
                    time: "25 MIN",
                    title: "McDonald's",
                    totalRiview: "200+ Ratings",
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<HomePageYummyView> createState() => HomePageYummyController();
}

class CardAllRestaurats extends StatelessWidget {
  String image;
  String title;
  String category;
  String ratting;
  String totalRiview;
  String time;
  String delevery;

  CardAllRestaurats({
    Key? key,
    required this.image,
    required this.title,
    required this.category,
    required this.ratting,
    required this.totalRiview,
    required this.time,
    required this.delevery,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 284.0,
      decoration: const BoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16.0,
          ),
          BannerIndicator(image: image),
          Text(
            title,
            style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 4.0,
          ),
          Text(
            category,
            style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 9.0,
          ),
          Row(
            children: [
              Text(
                ratting,
                style: const TextStyle(
                    fontSize: 12.0, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                width: 9.0,
              ),
              const Icon(
                Icons.star,
                color: Colors.green,
                size: 12.0,
              ),
              const SizedBox(
                width: 9.0,
              ),
              Text(
                totalRiview,
                style: const TextStyle(
                    fontSize: 12.0, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                width: 9.0,
              ),
              const Icon(
                Icons.timer,
                size: 12.0,
              ),
              const SizedBox(
                width: 9.0,
              ),
              Text(
                time,
                style: const TextStyle(
                    fontSize: 12.0, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                width: 9.0,
              ),
              const Icon(
                Icons.money,
                size: 12.0,
              ),
              const SizedBox(
                width: 9.0,
              ),
              Text(
                delevery,
                style: const TextStyle(
                    fontSize: 12.0, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                width: 9.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BannerIndicator extends StatelessWidget {
  String image;
  BannerIndicator({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 185.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            12.0,
          ),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 20,
            right: 20,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 5.0,
                  width: 8,
                  margin: const EdgeInsets.only(
                    right: 8.0,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        100.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 5.0,
                  width: 8,
                  margin: const EdgeInsets.only(
                    right: 8.0,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        100.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 5.0,
                  width: 8,
                  margin: const EdgeInsets.only(
                    right: 8.0,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        100.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 5.0,
                  width: 8,
                  margin: const EdgeInsets.only(
                    right: 8.0,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        100.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 5.0,
                  width: 8,
                  margin: const EdgeInsets.only(
                    right: 8.0,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        100.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class headingTag extends StatelessWidget {
  String title;
  headingTag({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Text(
              title,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
          ),
          const Text(
            "See all",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
