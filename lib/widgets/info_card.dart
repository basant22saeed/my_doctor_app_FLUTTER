import 'dart:io';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InfoCard extends StatelessWidget {
  InfoCard({
    super.key,
    required this.cardTitle,
    required this.cardSubtitle,
  });

  String cardTitle;
  String cardSubtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 12, right: 10, top: 16, bottom: 50),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(children: [
              // العنوان
              const SizedBox(height: 15),
              SizedBox(
                width: 300,
                child: Text(
                  cardTitle,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // الوصف
              SizedBox(
                height: 100,
                width: 300,
                child: Text(
                  cardSubtitle,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}
