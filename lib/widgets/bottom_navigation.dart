import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
        height: 80,
        backgroundColor: Colors.white,
        destinations: [
          // الملف الشخصي
          Container(
            child: Column(
              children: [
                Image.asset(
                  'assets/icons/person.png',
                  width: 30,
                  height: 30,
                ),
                const Text(
                  'الملف الشخصي',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          // الاشعارات
          Container(
            child: Column(
              children: [
                Image.asset(
                  'assets/icons/bell.png',
                  width: 30,
                  height: 30,
                ),
                const Text(
                  'الإشعارات',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          // السجل الطبي
          Container(
            child: Column(
              children: [
                Image.asset(
                  'assets/icons/report.png',
                  width: 30,
                  height: 30,
                ),
                const Text(
                  'السجل الطبي',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          // مواعيدي
          Container(
            child: Column(
              children: [
                Image.asset(
                  'assets/icons/appointments.png',
                  width: 30,
                  height: 30,
                ),
                const Text(
                  'مواعيدي',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          // الرئيسية
          Container(
            child: Column(
              children: [
                Image.asset(
                  'assets/icons/selected_home.png',
                  width: 30,
                  height: 30,
                ),
                const Text(
                  'الرئيسية',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff669AE9),
                  ),
                )
              ],
            ),
          ),
        ],
      );
  }
}