import 'package:flutter/material.dart';
import 'package:slicing/core.dart';
import '../controller/testing_controller.dart';

class TestingView extends StatefulWidget {
  const TestingView({Key? key}) : super(key: key);

  Widget build(context, TestingController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Sign In",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: const Icon(
          Icons.arrow_back_ios,
          size: 24.0,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: controller.formKey,
          child: Container(
            padding: const EdgeInsets.all(20.0),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 24.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Phone number",
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      child: TextFormField(
                        initialValue: null,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Enter your phone number",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                              borderSide: BorderSide(color: Color(0xff9CA4AB))),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 12),
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
                          fontSize: 16.0, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      child: TextFormField(
                        initialValue: null,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          errorStyle: const TextStyle(
                            color: Color(0xffE53935),
                            fontSize: 14.0,
                          ),
                          suffixIcon: const Padding(
                            padding: EdgeInsets.only(
                              right: 20.0,
                            ),
                            child: Icon(
                              Icons.visibility_off,
                              size: 24.0,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Enter your password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                              borderSide: BorderSide(color: Color(0xff9CA4AB))),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 12),
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24.0,
                ),
                SizedBox(
                  height: 48,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffF87146),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    onPressed: () {
                      // if (controller.formKey.currentState!.validate()) {
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //     const SnackBar(content: Text('Processing Data')),
                      //   );
                      // }
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32.0,
                ),
                //#TEMPLATE button_social_media
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
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
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
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.w500),
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
                //#END
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<TestingView> createState() => TestingController();
}
