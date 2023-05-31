// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ListProduct extends StatefulWidget {
  const ListProduct({Key? key}) : super(key: key);

  @override
  State<ListProduct> createState() => _ListProductState();
}

class _ListProductState extends State<ListProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Jumlah kolom dalam grid
                ),
                itemCount: 10, // Jumlah total item dalam GridView
                itemBuilder: (BuildContext context, int index) {
                  if (index % 2 == 0) {
                    // Item pada sisi kiri (indeks genap)
                    return Container(
                      color: Colors.blue,
                      height: 100.0,
                      child: Center(
                        child: Text('Item $index - Kiri'),
                      ),
                    );
                  } else {
                    // Item pada sisi kanan (indeks ganjil)
                    return Container(
                      color: Colors.green,
                      height: 150.0,
                      child: Center(
                        child: Text('Item $index - Kanan'),
                      ),
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
