// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ReferToFriend extends StatefulWidget {
  const ReferToFriend({Key? key}) : super(key: key);

  @override
  State<ReferToFriend> createState() => _ReferToFriendState();
}

class _ReferToFriendState extends State<ReferToFriend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Refer to Friends",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16.0,
          ),
        ),
        centerTitle: true,
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 54.0,
            ),
            Center(
              child: Container(
                height: 150.0,
                width: 150.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://icons.iconarchive.com/icons/custom-icon-design/flatastic-5/128/Gift-icon.png",
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
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Text(
              "Refer a Friend, Get \$10",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 24.0,
            ),
            const Text(
              "Get \$10 in credits when someone sign up using your refer link",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Container(
              height: 44.0,
              width: 245,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
              ),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.folder_shared,
                    size: 24.0,
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Text(
                    "https://ui8.net/76738b",
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            const Spacer(),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff22A45D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Email".toUpperCase(),
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 48,
              width: MediaQuery.of(context).size.width,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.green,
                  side: const BorderSide(
                    color: Colors.grey,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Others".toUpperCase(),
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
