// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:aiapp/pallete.dart';

class FeatureBox extends StatelessWidget {
  final String headerText;
  final Color color;
  final String descriptionText;
  const FeatureBox({
    Key? key,
    required this.headerText,
    required this.color,
    required this.descriptionText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              headerText,
              style: const TextStyle(
                fontFamily: "Cera Pro",
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Pallete.blackColor,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            descriptionText,
            style: const TextStyle(
              fontFamily: "Cera Pro",
              color: Pallete.blackColor,
            ),
          ),
        ],
      ),
    );
  }
}
