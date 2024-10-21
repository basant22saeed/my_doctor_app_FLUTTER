// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:my_doctor_app/widgets/search_option_tile.dart';
import 'package:my_doctor_app/widgets/search_tile.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});

  List tileItems = [
    ['assets/icons/kids.JPG', 'أطفال وحديثي الولادة'],
    ['assets/icons/nose.JPG', 'أنف وأذن وحنجرة'],
    ['assets/icons/liver.JPG', 'أمراض الكبد'],
    ['assets/icons/stomach.JPG', 'باطنة'],
    ['assets/icons/teeth.JPG', 'أسنان'],
    ['assets/icons/cancer.JPG', 'أورام'],
    ['assets/icons/blood.JPG', 'أمراض الدم'],
    ['assets/icons/kedney.JPG', 'أمراض الكلى'],
    ['assets/icons/kids.JPG', 'أطفال وحديثي الولادة'],
    ['assets/icons/nose.JPG', 'أنف وأذن وحنجرة'],
    ['assets/icons/liver.JPG', 'أمراض الكبد'],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(children: [
          const SizedBox(height: 60),
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
          Flexible(
            child: ListView.builder(
                itemCount: tileItems.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: SearchOptionTile(
                          textTitle: tileItems[index][1],
                          image: tileItems[index][0],
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  );
                }),
          )
        ]),
      ),
    );
  }
}
