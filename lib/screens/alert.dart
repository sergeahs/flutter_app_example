import 'package:flutter/material.dart';
import 'package:flutter_app_example/screens/partials/page_widget.dart';

class Alert extends StatefulWidget {
  const Alert({super.key});

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Alerts'),
      ),
      body: const Center(
        child: PageWidget(
            title: 'Coming soon !!!',
        ),
      ),
    );
  }
}
