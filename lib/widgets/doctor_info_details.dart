// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

// Doctor info card widget
class DoctorInfoDetails extends StatelessWidget {
  DoctorInfoDetails({
    super.key,
    required this.doctorImage,
    required this.doctorName,
    required this.doctorSpeciality,
    required this.visitorRating,
  });
  String doctorImage;
  String doctorName;
  String doctorSpeciality;
  int visitorRating;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            // صورة الدكتور
            Container(
              height: 90,
              width: 90,
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

                  const SizedBox(height: 5),
                  // نجوم التقييم
                  const Row(
                    children: [
                      Icon(Icons.star_rounded, color: Colors.yellow, size: 24),
                      Icon(Icons.star_rounded, color: Colors.yellow, size: 24),
                      Icon(Icons.star_rounded, color: Colors.yellow, size: 24),
                      Icon(Icons.star_rounded, color: Colors.yellow, size: 24),
                      Icon(Icons.star_rounded, color: Colors.yellow, size: 24),
                    ],
                  ),
                  const SizedBox(height: 5),

                  // التقييم زوار
                  Text(
                    'التقييم العام من $visitorRating زائر',
                    style: const TextStyle(color: Color(0xff669AE9)),
                  )
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
