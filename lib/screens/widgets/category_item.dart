import 'package:flutter/material.dart';
import 'package:flutter_app_example/core/models/category.dart';
import 'package:flutter_app_example/screens/utils/constants.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.category,
  });

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 80,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Constants.appColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Image.asset(category.img!),
          ),
        ),
        Text(category.title!)
      ],
    );
  }
}
