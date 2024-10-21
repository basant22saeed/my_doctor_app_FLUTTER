// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

// Doctor info card widget
class DoctorInfoCard extends StatelessWidget {
  DoctorInfoCard({
    super.key,
    required this.doctorImage,
    required this.doctorName,
    required this.doctorSpeciality,
    this.rating,
    this.views,
  });
String doctorImage;
  String doctorName;
  String doctorSpeciality;
  double? rating;
  int? views;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),

        // ظل الكارت
        decoration: BoxDecoration(
          color: Colors.white,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                // صورة الدكتور
                Container(
                  height: 80,
                  width: 80,
                  decoration: const BoxDecoration(
                    color: Color(0xffEFEDED),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Image.asset(
                      doctorImage, // Add your image path here
                      width: 60,
                      height: 60,
                    ),
                  ),
                ),

                const SizedBox(width: 15),

                // اسم و تخصص الدكتور
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // الاسم
                      Text(
                        'دكتور $doctorName',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),

                      // التخصص
                      Text(
                        doctorSpeciality,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),

            // تفاصيل عن الدكتور
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // طريقة الكشف
                    const Text(
                      'الكشف بمواعيد محددة',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 50),

                    // تقييم
                    const Icon(Icons.star, color: Colors.amber, size: 18),
                    const SizedBox(width: 10),
                    Text(
                      '$rating',
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    const SizedBox(width: 15),
                    // مشاهدات
                    const Icon(Icons.remove_red_eye_outlined,
                        color: Colors.grey, size: 18),
                    const SizedBox(width: 10),
                    Text(
                      '$views',
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 15),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            // اسم الفرع
            const Text(
              'اسم الفرع',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
