import 'package:flutter/material.dart';
import 'package:flutter_app_example/screens/utils/constants.dart';

class PageWidget extends StatelessWidget {
  const PageWidget({
    super.key,
    required this.title,
     this.svg,
  });

  final String title;
  final String? svg;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.all(30),
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Constants.appColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10)),
          child: Text(
            title,
            style: Constants.textStyle,
          ),
        )
      ],
    );
  }
}
