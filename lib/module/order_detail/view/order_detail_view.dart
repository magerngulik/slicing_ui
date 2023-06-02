import 'package:flutter/material.dart';
import 'package:slicing/core.dart';

class OrderDetailView extends StatefulWidget {
  const OrderDetailView({Key? key}) : super(key: key);

  Widget build(context, OrderDetailController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "McDonald's",
          style:
              GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 21.0,
            ),
            SizedBox(
              height: 337,
              child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  return Container(
                    height: 78.0,
                    margin: const EdgeInsets.only(
                      bottom: 20.0,
                    ),
                    decoration: const BoxDecoration(),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${index + 1}",
                          style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.green,
                          ),
                        ),
                        const SizedBox(
                          width: 24.0,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Cookie Sandwich",
                                style: GoogleFonts.montserrat(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                "Shortbread, chocolate turtle cookies, and red velvet.",
                                style: GoogleFonts.montserrat(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "USD7.4",
                          style: GoogleFonts.montserrat(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 60.0,
            ),
            Container(
              height: 100.0,
              decoration: const BoxDecoration(),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Subtotal",
                        style: GoogleFonts.montserrat(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      const Spacer(),
                      Text(
                        "\$ 28.4",
                        style: GoogleFonts.montserrat(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Row(
                    children: [
                      Text(
                        "Dilivery",
                        style: GoogleFonts.montserrat(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      const Spacer(),
                      Text(
                        "\$ 0",
                        style: GoogleFonts.montserrat(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Row(
                    children: [
                      Text(
                        "Total",
                        style: GoogleFonts.montserrat(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " (incl. VAT)",
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "\$ 0",
                        style: GoogleFonts.montserrat(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  "Add more items",
                  style: GoogleFonts.montserrat(
                      color: Colors.green,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 14.0,
                ),
              ],
            ),
            const SizedBox(
              height: 33.0,
            ),
            Row(
              children: [
                Text(
                  "Promo code",
                  style: GoogleFonts.montserrat(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 14.0,
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Checkout (\$11.98)",
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<OrderDetailView> createState() => OrderDetailController();
}
