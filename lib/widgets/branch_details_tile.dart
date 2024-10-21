// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class BranchDetailsTile extends StatelessWidget {
  BranchDetailsTile(
      {super.key, required this.detailTitle, required this.detailSubtitle});
  String detailTitle;
  String detailSubtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          detailTitle,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          detailSubtitle,
          style: const TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
