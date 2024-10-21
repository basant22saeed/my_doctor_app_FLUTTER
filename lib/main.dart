import 'package:flutter/material.dart';
import 'package:my_doctor_app/UI/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
    
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            centerTitle: true,
              backgroundColor: Colors.transparent, elevation: 0),
          useMaterial3: true,
        ),
        home:  HomePage(),
      ),
    );
  }
}
