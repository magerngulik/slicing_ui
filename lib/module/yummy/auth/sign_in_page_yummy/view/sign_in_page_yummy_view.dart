import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:slicing/core.dart';

class SignInPageYummyView extends StatefulWidget {
  const SignInPageYummyView({Key? key}) : super(key: key);

  Widget build(context, SignInPageYummyController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign in",
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'sfPro',
              color: grey100),
        ),
        actions: const [],
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios,
          size: 24.0,
          color: grey90,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Phone number",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Container(
                child: TextFormField(
                  initialValue: null,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Enter your phone number",
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 12),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                          borderSide: BorderSide(color: grey60))),
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Text(
                "Password",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Container(
                child: TextFormField(
                  initialValue: null,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Enter password",
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 12),
                      suffixIcon: const Padding(
                        padding: EdgeInsets.only(
                          right: 20.0,
                        ),
                        child: Icon(
                          Icons.visibility_off,
                          size: 24.0,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                          borderSide: BorderSide(color: grey60))),
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                "Forgot password?",
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    color: primary),
              ),
              const SizedBox(
                height: 44.0,
              ),
              SingleChildScrollView(
                controller: ScrollController(),
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 48,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Sign in",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'sfPro',
                            color: Colors.white,
                          ),
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
                                  icon: const FaIcon(FontAwesomeIcons.google,
                                      size: 10, color: Colors.black),
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
                                  icon: const FaIcon(FontAwesomeIcons.facebookF,
                                      size: 10, color: Colors.blue),
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
                    const SizedBox(
                      height: 26.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Do not have an account? ",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        Text(
                          "Sign up",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: primary),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<SignInPageYummyView> createState() => SignInPageYummyController();
}
