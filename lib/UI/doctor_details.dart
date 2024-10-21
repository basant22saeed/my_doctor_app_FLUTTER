// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:my_doctor_app/widgets/bottom_navigation.dart';
import 'package:my_doctor_app/widgets/doctor_info_details.dart';
import 'package:my_doctor_app/widgets/reservation_card.dart';
import 'package:my_doctor_app/widgets/tile.dart';

class DoctorDetails extends StatelessWidget {
  DoctorDetails(
      {super.key,
      required this.appointmentPrice,
      required this.waitingTime,
      required this.doctorLocation});

  int appointmentPrice;
  int waitingTime;
  String doctorLocation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('بيانات الدكتور'),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: [
              // بطاقة تعريف الدكتور
              DoctorInfoDetails(
                visitorRating: 423,
                doctorImage: 'assets/images/person.png',
                doctorName: 'محمد احمد',
                doctorSpeciality: 'اخصائي امراض القلب',
              ),

              const Divider(),

              // سعر الكشف
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(children: [
                  Image.asset('assets/icons/wallet.png', width: 30, height: 30),
                  const SizedBox(width: 10),
                  Text('سعر الكشف $appointmentPrice',
                      style: const TextStyle(fontSize: 16))
                ]),
              ),

              const Divider(),

              // وقت الانتظار
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(children: [
                  Image.asset('assets/icons/clock.png', width: 30, height: 30),
                  const SizedBox(width: 10),
                  Text('وقت الانتظار $waitingTime دقيقة',
                      style: const TextStyle(fontSize: 16))
                ]),
              ),

              const Divider(),

              // موقع الدكتور
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Row(children: [
                  Image.asset('assets/icons/location.png',
                      width: 30, height: 30),
                  const SizedBox(width: 10),
                  Text(doctorLocation, style: const TextStyle(fontSize: 16)),
                ]),
              ),

              const Divider(),

              // اختر ميعاد الحجز
              const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  child: Text(
                    'اختر ميعاد حجزك',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Row(
                children: [
                  // زرار اليسار
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                          child: Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xff669AE9),
                      )),
                    ),
                  ),
                  const SizedBox(width: 15),

                  //  المواعيد والحجوزات
                  Flexible(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ReservationCard(
                            dayDate: 'الخميس 03/10',
                            startTime: '06:00 م',
                            endTime: '12:00 م',
                          ),
                          const SizedBox(width: 15),
                          ReservationCard(
                            dayDate: 'الخميس 03/10',
                            startTime: '06:00 م',
                            endTime: '12:00 م',
                          ),
                          const SizedBox(width: 15),
                          ReservationCard(
                            dayDate: 'الخميس 03/10',
                            startTime: '06:00 م',
                            endTime: '12:00 م',
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),

                  // زرار اليمين
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                          child: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff669AE9),
                      )),
                    ),
                  ),
                ],
              ),

              // الدخول في ميعاد الحجز
              const SizedBox(height: 15),
              const Text(
                'الدخول في ميعاد الحجز',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),

              const Divider(),
              const SizedBox(height: 8),

              //معلومات عن الدكتور
              Tile(
                tileTitle: 'معلومات عن الدكتور',
                tileIcon: const Icon(Icons.keyboard_arrow_down),
                bgColor: const Color(0xffD5E2EA),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}
