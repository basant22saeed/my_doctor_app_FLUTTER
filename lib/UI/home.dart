import 'package:flutter/material.dart';
import 'package:my_doctor_app/UI/choose_branch.dart';
import 'package:my_doctor_app/UI/doctor_details.dart';
import 'package:my_doctor_app/UI/search_page.dart';
import 'package:my_doctor_app/widgets/bottom_navigation.dart';
import 'package:my_doctor_app/widgets/tile.dart';
import 'package:my_doctor_app/widgets/button.dart';
import 'package:my_doctor_app/widgets/doctor_info_home.dart';
import 'package:my_doctor_app/widgets/info_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('لوجو'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchPage(),
                ),
              ),
              icon: const Icon(Icons.search),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(height: 30),

              // بطاقة امراض الكلى
              Stack(children: [
                // صورة الخلفية
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    'assets/images/home info card bg.jpeg',
                    fit: BoxFit.cover,
                    opacity: const AlwaysStoppedAnimation(0.4),
                  ),
                ),
                // محتوى البطاقة
                InfoCard(
                  cardTitle: 'حب نفسك - متابعة امراض الكلى',
                  cardSubtitle:
                      'في بعض الأحيان يعد الضعف العام والتعب المبكر وقلة التركيز في لعمل والشحوب من شكوى مرضى الفشل الكلوي المزمن في مرحلة مبكرة',
                ),

                // زرار احجز الان
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: CustomButton(
                    buttonWidth: 123,
                    buttonText: 'إحجز الأن',
                    buttonColor: const Color(0xff669AE9),
                  ),
                ),
              ]),

              const SizedBox(height: 17),

              //عنوان فقرة
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // زر جانبي -- عرض الكل
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'عرض الكل',
                      style: TextStyle(
                        color: Color(0xff669AE9),
                        fontSize: 16,
                      ),
                    ),
                  ),

                  // عنوان -- أفضل اطباءنا
                  const Text(
                    'أفضل أطبائنا',
                    style: TextStyle(fontSize: 22),
                  ),
                ],
              ),
              const SizedBox(height: 17),

              // بطاقة الطبيب
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DoctorDetails(
                      appointmentPrice: 230,
                      waitingTime: 20,
                      doctorLocation: 'حي النسيم - الجموم - مكة المكرمة',
                    ),
                  ),
                ),
                child: DoctorInfoCard(
                  doctorImage: 'assets/images/person.png',
                  doctorName: 'محمد أحمد',
                  doctorSpeciality: 'اخصائي امراض القلب',
                  rating: 5.0,
                  views: 5430,
                ),
              ),

              const SizedBox(height: 24),
              // فروعنا
              const Text(
                'فروعنا',
                style: TextStyle(fontSize: 22),
              ),
              const SizedBox(height: 12),
              // الفروع
              Directionality(
                textDirection: TextDirection.rtl,
                child: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChooseBranch(),
                    ),
                  ),
                  child: Tile(
                    tileTitle: 'فرع الزاهر خلف',
                    tileIcon: const Icon(Icons.arrow_forward),
                    bgColor: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}



  // NavigationDestination(
  //           icon: Icon(CupertinoIcons.person),
  //           label: 'الملف الشخصي',
  //         ),
  //         NavigationDestination(
  //           icon: Icon(CupertinoIcons.bell),
  //           label: 'الإشعارات',
  //         ),
  //         NavigationDestination(
  //           icon: Icon(CupertinoIcons.doc_on_clipboard),
  //           label: 'السجل الطبي',
  //         ),
  //         NavigationDestination(
  //           icon: Icon(CupertinoIcons.shopping_cart),
  //           label: 'مواعيدي',
  //         ),
  //         NavigationDestination(
  //           icon: Icon(CupertinoIcons.home),
  //           label: 'الرئيسية',
  //         ),
