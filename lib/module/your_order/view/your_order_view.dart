import 'package:flutter/material.dart';
import 'package:slicing/core.dart';
import '../controller/your_order_controller.dart';

class YourOrderView extends StatefulWidget {
  const YourOrderView({Key? key}) : super(key: key);

  Widget build(context, YourOrderController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Your Orders",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Upcoming orders".toUpperCase(),
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const Spacer(),
                Text(
                  "Clear all".toUpperCase(),
                  style: Theme.of(context).textTheme.bodySmall,
                )
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            ListView.builder(
              itemCount: controller.product.length,
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              clipBehavior: Clip.none,
              itemBuilder: (context, index) {
                var item = controller.product[index];
                return Container(
                  height: 120.0,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 110.0,
                        width: 110.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "${item['image']}",
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              8.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 18.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${item['title']}",
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                            const SizedBox(
                              height: 6.0,
                            ),
                            Text("${item['description']}",
                                maxLines: 2,
                                style: Theme.of(context).textTheme.titleSmall),
                            const SizedBox(
                              height: 12.0,
                            ),
                            Row(
                              children: [
                                Text(
                                  "\$\$  ${item['category']}",
                                  style: const TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400),
                                ),
                                const Spacer(),
                                Text(
                                  "${item['price']}",
                                  style: const TextStyle(
                                      color: Color(0xff22A45D),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            const SizedBox(
              height: 34.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Past orders".toUpperCase(),
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const Spacer(),
                Text(
                  "Clear all".toUpperCase(),
                  style: Theme.of(context).textTheme.bodySmall,
                )
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            ListView.builder(
              itemCount: controller.pastOrder.length,
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              clipBehavior: Clip.none,
              itemBuilder: (context, index) {
                var item = controller.pastOrder[index];
                return Container(
                  height: 120.0,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 110.0,
                        width: 110.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "${item['image']}",
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              8.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 18.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${item['title']}",
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                            const SizedBox(
                              height: 6.0,
                            ),
                            Text("${item['description']}",
                                maxLines: 2,
                                style: Theme.of(context).textTheme.titleSmall),
                            const SizedBox(
                              height: 12.0,
                            ),
                            Row(
                              children: [
                                Text(
                                  "\$\$  ${item['category']}",
                                  style: const TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400),
                                ),
                                const Spacer(),
                                Text(
                                  "${item['price']}",
                                  style: const TextStyle(
                                      color: Color(0xff22A45D),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ],
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
    );
  }

  @override
  State<YourOrderView> createState() => YourOrderController();
}
