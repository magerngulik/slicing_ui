// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:slicing/core.dart';

class HomePageFoodlyView extends StatefulWidget {
  const HomePageFoodlyView({Key? key}) : super(key: key);

  Widget build(context, HomePageFoodlyController controller) {
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "San Francisco",
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500),
                ),
                Icon(
                  Icons.keyboard_arrow_down_sharp,
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
            width: 20.0,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              BannerIndicator2(
                  image:
                      "https://images.unsplash.com/photo-1613844237701-8f3664fc2eff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fFNPVVB8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"),
              const SizedBox(
                height: 24.0,
              ),
              HeadingProduct(title: "Feature Patner"),
              const SizedBox(
                height: 24.0,
              ),
              SizedBox(
                height: 280.0,
                child: ListView.builder(
                  itemCount: controller.image.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) {
                    var item = controller.image[index];
                    return CardHeading(
                        title: "Mario Italiano",
                        delivery: "Free Delivery",
                        image: item,
                        location: "Sukajadi, Pekanbaru",
                        rating: "4.1",
                        time: "10min");
                  },
                ),
              ),
              const SizedBox(
                height: 23.0,
              ),
              Container(
                height: 180.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1547592166-23ac45744acd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80"),
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
                height: 23.0,
              ),
              HeadingProduct(title: "Best Picks Restaurants by team"),
              const SizedBox(
                height: 23.0,
              ),
              SizedBox(
                height: 280.0,
                child: ListView.builder(
                  itemCount: controller.image.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) {
                    var item = controller.image[index];
                    return CardHeading(
                        title: "Mario Italiano",
                        delivery: "Free Delivery",
                        image: item,
                        location: "Sukajadi, Pekanbaru",
                        rating: "4.1",
                        time: "10min");
                  },
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              HeadingProduct(title: "All Restaurants"),
              const SizedBox(
                height: 24.0,
              ),
              ListView.builder(
                itemCount: controller.image.length,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  var item = controller.image[index];
                  return CardProductAllRestaurant(
                      category: "Chinese food",
                      title: "McDonald's",
                      delivery: "Free",
                      time: "25min",
                      image: item,
                      rating: "4.2");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<HomePageFoodlyView> createState() => HomePageFoodlyController();
}

class CardProductAllRestaurant extends StatelessWidget {
  String title;
  String image;
  String category;
  String rating;
  String time;
  String delivery;
  CardProductAllRestaurant({
    Key? key,
    required this.title,
    required this.image,
    required this.category,
    required this.rating,
    required this.time,
    required this.delivery,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 284.0,
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BannerIndicator(image: image),
          const SizedBox(
            height: 16.0,
          ),
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
                rating,
                style: const TextStyle(
                    fontSize: 12.0, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                width: 9.0,
              ),
              const Icon(
                Icons.star,
                size: 11.0,
                color: Colors.green,
              ),
              const SizedBox(
                width: 9.0,
              ),
              const Text(
                "200+ Ratings",
                style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                width: 9.0,
              ),
              const Icon(
                Icons.timer,
                size: 11.0,
                color: Colors.grey,
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
                size: 11.0,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 9.0,
              ),
              Text(
                delivery,
                style: const TextStyle(
                    fontSize: 12.0, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CardHeading extends StatelessWidget {
  String image;
  String title;
  String location;
  String rating;
  String time;
  String delivery;
  CardHeading({
    Key? key,
    required this.image,
    required this.title,
    required this.location,
    required this.rating,
    required this.time,
    required this.delivery,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280.0,
      width: 200,
      padding: const EdgeInsets.only(
        right: 14.0,
      ),
      decoration: const BoxDecoration(),
      child: Column(
        children: [
          Container(
            height: 180.0,
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(
                  16.0,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 14.0,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 2.0,
          ),
          Text(
            location,
            style: const TextStyle(
              fontSize: 16.0,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              Container(
                height: 20.0,
                width: 36,
                decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      6.0,
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    rating,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(
                width: 12.0,
              ),
              Text(
                time,
                style: const TextStyle(
                    fontSize: 14.0, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                width: 12.0,
              ),
              Text(
                delivery,
                style: const TextStyle(
                    fontSize: 14.0, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HeadingProduct extends StatefulWidget {
  String title;
  HeadingProduct({
    required this.title,
    super.key,
  });

  @override
  State<HeadingProduct> createState() => _HeadingProductState();
}

class _HeadingProductState extends State<HeadingProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Text(
              widget.title,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24.0,
              ),
            ),
          ),
          const Text(
            "See All",
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}

class BannerIndicator2 extends StatelessWidget {
  String image;
  BannerIndicator2({
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
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Container(
                  height: 5.0,
                  width: 8,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Container(
                  height: 5.0,
                  width: 8,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Container(
                  height: 5.0,
                  width: 8,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Container(
                  height: 5.0,
                  width: 8,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        16.0,
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
