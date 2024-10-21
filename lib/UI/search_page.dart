import 'package:flutter/material.dart';
import 'package:my_doctor_app/widgets/search_option_tile.dart';
import 'package:my_doctor_app/widgets/search_tile.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(children: [
          const SizedBox(height: 50),
          Row(children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
            ),
            const SizedBox(width: 30),
            Directionality(
                textDirection: TextDirection.rtl,
                child: SearchTile(tileTitle: 'ابحث بالتخصص'))
          ]),
          const SizedBox(height: 20),
          SearchOptionTile(
            textTitle: 'أطفال وحديثي الولادة',
            image: 'assets/icons/kids.JPG',
          )
        ]),
      ),
    );
  }
}
