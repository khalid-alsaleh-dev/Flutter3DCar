import 'package:flutter/material.dart';
import 'package:flutter_3d_car/screens/home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const Flutter3DCar());
}

class Flutter3DCar extends StatelessWidget {
  const Flutter3DCar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(1920, 1017),
        builder: (context, _) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(fontFamily: 'Ebrima'),
            home: const Home(),
          );
        });
  }
}
