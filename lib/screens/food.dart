import 'package:flutter/material.dart';
import 'package:flutter_app_example/screens/partials/page_widget.dart';

class Food extends StatefulWidget {
  const Food({super.key});

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Food'),
      ),
      body: const Center(
        child: PageWidget(
           title: 'Coming soon !!!',
        ),
      ),
    );
  }
}
