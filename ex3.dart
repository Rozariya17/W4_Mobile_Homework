import 'package:flutter/material.dart';

enum Product {
  dart("Dart", "the best object language", "assets/ex3/dart.png"),
  flutter("Flutter", "the best mobile widet library", "assets/ex3/flutter.png"),
  firebase("Firebase", "the best cloud database", "assets/ex3/firebase.png");

  final String title;
  final String description;
  final String imagePath;

  const Product(this.title, this.description, this.imagePath);
}

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(product.imagePath, width: 60, height: 60),
            SizedBox(height: 10),
            Text(
              product.title,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              product.description,
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Products")),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ProductCard(product: Product.dart),
              ProductCard(product: Product.flutter),
              ProductCard(product: Product.firebase),
            ],
          ),
        ),
      ),
    ),
  );
}

