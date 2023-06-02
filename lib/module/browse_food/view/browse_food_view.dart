import 'package:flutter/material.dart';
import 'package:slicing/core.dart';
import '../controller/browse_food_controller.dart';

class BrowseFoodView extends StatefulWidget {
  const BrowseFoodView({Key? key}) : super(key: key);

  Widget build(context, BrowseFoodController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Browse Foods",
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: controller.product.length,
                padding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  var item = controller.product[index];
                  return Card(
                    color: Colors.white,
                    elevation: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 185.0,
                            width: 355,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  "${item['image']}",
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(
                                  12.0,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          Text(
                            "${item['name']}",
                            style: const TextStyle(
                              fontSize: 28.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "\$\$ .${item['category']}",
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 9.0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "${item['rating']}",
                                style: const TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                width: 8.0,
                              ),
                              const Icon(
                                Icons.star,
                                size: 15.0,
                                color: Colors.green,
                              ),
                              const SizedBox(
                                width: 8.0,
                              ),
                              Text(
                                "${item['countRating']}",
                                style: const TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                width: 8.0,
                              ),
                              const Icon(
                                Icons.timer,
                                size: 15.0,
                                color: Colors.green,
                              ),
                              const SizedBox(
                                width: 8.0,
                              ),
                              Text(
                                "${item['time']}",
                                style: const TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                width: 8.0,
                              ),
                              const Icon(
                                Icons.money_outlined,
                                size: 15.0,
                                color: Colors.green,
                              ),
                              const SizedBox(
                                width: 8.0,
                              ),
                              Text(
                                "${item['price']}",
                                style: const TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  State<BrowseFoodView> createState() => BrowseFoodController();
}
