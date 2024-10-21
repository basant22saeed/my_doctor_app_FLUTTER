// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class SearchOptionTile extends StatelessWidget {
  SearchOptionTile({super.key, required this.textTitle, required this.image});
  String textTitle;
  String image;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Directionality(
          textDirection: TextDirection.rtl,
          child: Text(
            textTitle,
            style: const TextStyle(fontSize: 20),
          )),
      trailing: Image.asset(
        image,
        width: 45,
        height: 45,
      ),
    );
  }
}
