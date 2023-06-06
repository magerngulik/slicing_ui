import 'package:flutter/material.dart';

class CardByHeading extends StatelessWidget {
  String title;
  String image;
  String rating;
  String time;
  String price;
  String location;
  CardByHeading({
    Key? key,
    required this.title,
    required this.image,
    required this.rating,
    required this.time,
    required this.price,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  image,
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(
                  10.0,
                ),
              ),
            ),
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
          ),
          Text(
            location,
            style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
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
              Text(
                time,
                style: const TextStyle(
                    fontSize: 14.0, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                width: 12.0,
              ),
              const Text(
                ".",
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                width: 12.0,
              ),
              Expanded(
                child: Text(
                  price,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 14.0, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
