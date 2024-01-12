import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'screens/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 19, 19, 19),
          textTheme: TextTheme(
            titleMedium: TextStyle(
              color: Colors.white,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
            bodyMedium: TextStyle(
              color: Colors.white,
              fontSize: 12.sp,
            ),
            bodySmall: TextStyle(
              color: Colors.white,
              fontSize: 8.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        home: const Home(),
      ),
    );
  }
}
