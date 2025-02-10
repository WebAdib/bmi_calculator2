import 'package:bmi_calculator2/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator2/CalculateBMI.dart';
import 'package:sizer/sizer.dart';
import 'package:device_preview/device_preview.dart';

// My application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        theme: ThemeData(
          primaryColor: Colors.blue,
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          appBarTheme: AppBarTheme(
            centerTitle: false,
            backgroundColor: Color.fromRGBO(245, 245, 245, 1),
            foregroundColor: Colors.black87,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromRGBO(66, 199, 142, 1),
              foregroundColor: Colors.white,
              elevation: 4.0,
            ),
          ),
        ),
        title: 'BMI Calculator 2',
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      );
    });
  }
}
