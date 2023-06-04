import 'package:flutter/material.dart';
import 'package:slicing/core.dart';
import '../controller/onbording_page_yummy_controller.dart';

class OnbordingPageYummyView extends StatefulWidget {
  const OnbordingPageYummyView({Key? key}) : super(key: key);

  Widget build(context, OnbordingPageYummyController controller) {
    controller.view = this;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 70.0,
              width: 290,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/img/logo_yummy.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<OnbordingPageYummyView> createState() => OnbordingPageYummyController();
}
