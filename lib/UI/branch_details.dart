import 'package:flutter/material.dart';
import 'package:my_doctor_app/widgets/bottom_navigation.dart';
import 'package:my_doctor_app/widgets/branch_details_tile.dart';

class BranchDetails extends StatelessWidget {
  const BranchDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('بيانات الفرع'),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BranchDetailsTile(
                  detailTitle: 'اسم الفرع', detailSubtitle: 'الفرع الزاهر خلف'),
              const Divider(),
              const SizedBox(height: 16),
              BranchDetailsTile(
                  detailTitle: 'العنوان',
                  detailSubtitle: '46 شارع 12 المساكن / الهرم'),
              const Divider(),
              const SizedBox(height: 16),
              BranchDetailsTile(
                  detailTitle: 'الهاتف', detailSubtitle: '01265486541'),
              const Divider(),
              const SizedBox(height: 16),
              BranchDetailsTile(
                  detailTitle: 'عدد ساعات العمل',
                  detailSubtitle: 'متاح دائما'),
              const Divider(),
              const SizedBox(height: 16),
              BranchDetailsTile(
                  detailTitle: 'البريد الالكتروني',
                  detailSubtitle: 'alsaedygroup.hr@gmail.com '),
              const Divider(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}
