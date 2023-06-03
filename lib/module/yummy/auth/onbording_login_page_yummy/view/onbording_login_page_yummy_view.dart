import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:slicing/core.dart';

class OnbordingLoginPageYummyView extends StatefulWidget {
  const OnbordingLoginPageYummyView({Key? key}) : super(key: key);

  Widget build(context, OnbordingLoginPageYummyController controller) {
    controller.view = this;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 541.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/img/bg_yummy_food.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white.withOpacity(0.1),
                          Colors.white,
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: SingleChildScrollView(
                      controller: ScrollController(),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 181.0,
                          ),
                          Container(
                            height: 64.0,
                            width: 265,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/img/logo_yummy.png",
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
                            height: 171.0,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 44,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: primary,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                    fontFamily: 'sfPro',
                                    color: white),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 24.0,
                          ),
                          const Text(
                            "or",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'sfPro',
                            ),
                          ),
                          const SizedBox(
                            height: 24.0,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 44,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff5384EE),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                              ),
                              onPressed: () {},
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Spacer(),
                                  Container(
                                      height: 25.0,
                                      width: 25.0,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(
                                            32.0,
                                          ),
                                        ),
                                      ),
                                      child: IconButton(
                                        icon: const FaIcon(
                                            FontAwesomeIcons.google,
                                            size: 10,
                                            color: Colors.black),
                                        onPressed: () {},
                                      )),
                                  const SizedBox(
                                    width: 25.0,
                                  ),
                                  Text(
                                    "Continue with Google",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.0,
                                        fontFamily: 'sfPro',
                                        color: white),
                                  ),
                                  const Spacer(),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 44,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff415792),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                              ),
                              onPressed: () {},
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Spacer(),
                                  Container(
                                      height: 30.0,
                                      width: 30.0,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(
                                            32.0,
                                          ),
                                        ),
                                      ),
                                      child: IconButton(
                                        icon: const FaIcon(
                                            FontAwesomeIcons.facebookF,
                                            size: 10,
                                            color: Colors.blue),
                                        onPressed: () {},
                                      )),
                                  const SizedBox(
                                    width: 25.0,
                                  ),
                                  Text(
                                    "Continue with Facebook",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.0,
                                        fontFamily: 'sfPro',
                                        color: white),
                                  ),
                                  const Spacer(),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 44,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                              ),
                              onPressed: () {},
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Spacer(),
                                  IconButton(
                                    icon: const FaIcon(FontAwesomeIcons.apple,
                                        size: 25, color: Colors.white),
                                    onPressed: () {},
                                  ),
                                  const SizedBox(
                                    width: 25.0,
                                  ),
                                  Text(
                                    "Continue with GoogleApple",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.0,
                                        fontFamily: 'sfPro',
                                        color: white),
                                  ),
                                  const Spacer(),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<OnbordingLoginPageYummyView> createState() =>
      OnbordingLoginPageYummyController();
}
