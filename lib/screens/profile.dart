import 'package:flutter/material.dart';
import 'package:flutter_app_example/screens/partials/page_widget.dart';
import 'package:flutter_app_example/screens/utils/assets.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Center(
        child: PageWidget(
          svg: Assets.profile,
            title: 'Coming soon !!!',
        ),
      ),
    );
  }
}
