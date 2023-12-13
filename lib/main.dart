import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: const Row(
            children: [
              Text('ListView Exercise'),
            ],
          ),
        ),
        body: const Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        shrinkWrap: false,
        children: products.map(
          (product) {
            return ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: Text(product.name),
              trailing: Text("\$ ${product.price}"),
            );
          },
        ).toList(),
      ),
    );
  }
}

class Product {
  String name;
  int price;

  Product(this.name, this.price);
}

List<Product> products = [
  Product("Äpfel", 2),
  Product("Mango", 3),
  Product("Bananen", 3),
  Product("Orange", 1),
  Product("Strawberry", 2),
];
