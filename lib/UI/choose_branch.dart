import 'package:flutter/material.dart';
import 'package:my_doctor_app/widgets/button.dart';
import 'package:my_doctor_app/widgets/tile.dart';

class ChooseBranch extends StatefulWidget {
  const ChooseBranch({super.key});

  @override
  State<ChooseBranch> createState() => _ChooseBranchState();
}

class _ChooseBranchState extends State<ChooseBranch> {
  String? _selectedOption = 'فرع حي النسيم';

  CustomRadioButton(String option) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
          color: _selectedOption == option
              ? const Color(0xff669AE9)
              : Colors.grey.shade300,
          shape: BoxShape.circle),
      child: _selectedOption == option
          ? Center(
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                    color: _selectedOption == option
                        ? const Color(0xff669AE9)
                        : Colors.grey.shade300,
                    shape: BoxShape.circle),
              ),
            )
          : null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text(
              'حدد الفرع',
              style: TextStyle(fontSize: 24),
            ),
          )
        ],
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(children: [
            // الفرع الاول

            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedOption = 'الفرع الزاهر خلف';
                });
              },
              child: Tile(
                bgColor: Colors.white,
                tileTitle: 'الفرع الزاهر خلف',
                tileIcon: CustomRadioButton('الفرع الزاهر خلف'),
              ),
            ),

            const SizedBox(height: 20),

            // الفرع الثاني
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedOption = 'فرع حي النسيم';
                });
              },
              child: Tile(
                bgColor: Colors.white,
                tileTitle: 'فرع حي النسيم',
                tileIcon: CustomRadioButton('فرع حي النسيم'),
              ),
            ),
            const SizedBox(height: 20),

            // الفرع الثالث

            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedOption = 'فرع الجموم';
                });
              },
              child: Tile(
                bgColor: Colors.white,
                tileTitle: 'فرع الجموم',
                tileIcon: CustomRadioButton('فرع الجموم'),
              ),
            ),

            const Spacer(),

            CustomButton(
              buttonText: 'التالي',
              fontSize: 18,
              buttonWidth: 320,
              textColor: Colors.white,
              buttonColor: const Color(0xff669AE9),
            ),
            const SizedBox(height: 24),
          ]),
        ),
      ),
    );
  }
}
