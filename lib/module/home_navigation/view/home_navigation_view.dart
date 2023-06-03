import 'package:flutter/material.dart';
import 'package:slicing/core.dart';

class HomeNavigationView extends StatefulWidget {
  const HomeNavigationView({Key? key}) : super(key: key);

  Widget build(context, HomeNavigationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home Navigation",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: 'sfPro',
          ),
        ),
        centerTitle: true,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.0,
                  crossAxisCount: 2,
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 6,
                ),
                itemCount: controller.menu.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.menu[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => item['onTap']),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: primary,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            item['icon'],
                            size: 50.0,
                            color: Colors.white,
                          ),
                          Text(
                            "${item['name']}",
                            style: const TextStyle(
                              fontFamily: 'sfPro',
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<HomeNavigationView> createState() => HomeNavigationController();
}
