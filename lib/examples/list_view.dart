import 'package:flutter/material.dart';

class ListProduct extends StatefulWidget {
  const ListProduct({super.key});

  @override
  State<ListProduct> createState() => _ListProductState();
}

class _ListProductState extends State<ListProduct> {
  List<String> products = [
    'Apple',
    'Orange',
    'Mango',
    'Cucumber',
    'Watermelon',
    'Carrot',
    'Banana',
    'Pineapple',
    'Grape',
    'Strawberry',
    'Cherry',
    'Blueberry',
    'Papaya',
    'Kiwi',
    'Lemon',
    'Avocado',
    'Peach',
    'Pear',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Daftar Produk'),
        ),
        body: ListView(
          children: List.generate(products.length, (i) {
            String name = products[i];

            return Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.grey.shade300,
                  ),
                )
              ),
              child: Text(name),
            );
          }),
        ));
  }
}
