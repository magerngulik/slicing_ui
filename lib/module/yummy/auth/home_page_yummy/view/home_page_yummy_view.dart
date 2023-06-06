import 'package:flutter/material.dart';
import 'package:slicing/core.dart';

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
              Container(
                height: 185.0,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1533050487297-09b450131914?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
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
              ),
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
                    return Container(
                      height: 254.0,
                      width: 200,
                      margin: const EdgeInsets.only(
                        right: 14.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 160.0,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://images.unsplash.com/photo-1533050487297-09b450131914?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  10.0,
                                ),
                              ),
                            ),
                          ),
                          const Text(
                            "Mario Italiano",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.w500),
                          ),
                          const Text(
                            "Colarodo, San Francisco",
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.w400),
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
                                child: const Center(
                                  child: Text(
                                    "4.5",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 12.0,
                              ),
                              const Text(
                                "25min",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                width: 12.0,
                              ),
                              const Text(
                                ".",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                width: 12.0,
                              ),
                              const Expanded(
                                child: Text(
                                  "Free delivery",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20.0,
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
