// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  Tile({
    super.key,
    required this.tileTitle,
    required this.tileIcon,
    this.bgColor,
  });

  String tileTitle;
  Widget tileIcon;
  Color? bgColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            offset: const Offset(0, 4),
            blurRadius: 15,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0),
        child: ListTile(
          title: Directionality(
            textDirection: TextDirection.rtl,
            child: Text(
              tileTitle,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: tileIcon,
          ),
        ),
      ),
    );
  }
}
