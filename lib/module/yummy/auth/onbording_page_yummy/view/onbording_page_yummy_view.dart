import 'package:flutter/material.dart';
import 'package:slicing/core.dart';
import '../controller/onbording_page_yummy_controller.dart';

class OnbordingPageYummyView extends StatefulWidget {
  const OnbordingPageYummyView({Key? key}) : super(key: key);

  Widget build(context, OnbordingPageYummyController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("OnbordingPageYummy"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<OnbordingPageYummyView> createState() => OnbordingPageYummyController();
}