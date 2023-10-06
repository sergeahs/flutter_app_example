import 'package:flutter/material.dart';
import 'package:flutter_app_example/screens/partials/page_widget.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Setting'),
      ),
      body: const Center(
        child: PageWidget(
          title: 'Coming soon !!!',
        ),
      ),
    );
  }
}
