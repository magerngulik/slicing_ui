import 'package:flutter/material.dart';
import 'package:slicing/core.dart';

class RegisterPageYummyView extends StatefulWidget {
  const RegisterPageYummyView({Key? key}) : super(key: key);

  Widget build(context, RegisterPageYummyController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sign Up",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'sfPro',
          ),
        ),
        centerTitle: true,
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Full Name",
              style: TextStyle(
                  fontFamily: 'sfPro',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Container(
              child: TextFormField(
                initialValue: null,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 12),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Enter Full Name",
                  hintStyle: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'sfPro',
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              "Phone Number",
              style: TextStyle(
                  fontFamily: 'sfPro',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Container(
              child: TextFormField(
                initialValue: null,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 12),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Enter your phone number",
                  hintStyle: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'sfPro',
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              "Email",
              style: TextStyle(
                  fontFamily: 'sfPro',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Container(
              child: TextFormField(
                initialValue: null,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 12),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Enter email",
                  hintStyle: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'sfPro',
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              "Password",
              style: TextStyle(
                  fontFamily: 'sfPro',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Container(
              child: TextFormField(
                initialValue: null,
                keyboardType: TextInputType.phone,
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 12),
                  filled: true,
                  suffixIcon: const Padding(
                    padding: EdgeInsets.only(
                      right: 20.0,
                    ),
                    child: Icon(
                      Icons.visibility_off_outlined,
                      size: 24.0,
                    ),
                  ),
                  fillColor: Colors.white,
                  hintText: "Enter password",
                  hintStyle: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'sfPro',
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              "Password",
              style: TextStyle(
                  fontFamily: 'sfPro',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Container(
              child: TextFormField(
                initialValue: null,
                keyboardType: TextInputType.phone,
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 12),
                  filled: true,
                  suffixIcon: const Padding(
                    padding: EdgeInsets.only(
                      right: 20.0,
                    ),
                    child: Icon(
                      Icons.visibility_off_outlined,
                      size: 24.0,
                    ),
                  ),
                  fillColor: Colors.white,
                  hintText: "Enter password",
                  hintStyle: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'sfPro',
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: Wrap(
                children: [
                  const Text(
                    "By clicking Create account, you agree to the system's ",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'sfPro',
                    ),
                  ),
                  Text(
                    "Terms and policies",
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'sfPro',
                        color: primary),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 32.0,
            ),
            SizedBox(
              height: 48,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      fontFamily: 'sfPro',
                      color: Colors.white,
                    ),
                  )),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2.0,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: const BoxDecoration(
                    color: Color(0xffEEEEEE),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                const Text(
                  "or",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                Container(
                  height: 2.0,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: const BoxDecoration(
                    color: Color(0xffEEEEEE),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
                    ),
                  ),
                ),
              ],
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.white,
                      child: FractionallySizedBox(
                        heightFactor: 0.7,
                        widthFactor: 0.7,
                        child: Image.asset(
                          "assets/img/google.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 21.0,
                    ),
                    const Text(
                      "Continue with Google",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.blue,
                      child: FractionallySizedBox(
                        heightFactor: 0.7,
                        widthFactor: 0.7,
                        child: Image.asset(
                          "assets/img/facebook.png",
                          fit: BoxFit.fill,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 21.0,
                    ),
                    const Text(
                      "Continue with Facebook",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 50.0,
                    ),
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.black,
                      child: FractionallySizedBox(
                        heightFactor: 0.7,
                        widthFactor: 0.7,
                        child: Image.asset(
                          "assets/img/apple-logo.png",
                          fit: BoxFit.fill,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 21.0,
                    ),
                    const Expanded(
                      child: Text(
                        "Continue with GoogleApple",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Do not have an account? ",
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
                ),
                Text(
                  "Sign up",
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffF87146)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<RegisterPageYummyView> createState() => RegisterPageYummyController();
}
