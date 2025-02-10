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
            color: Colors.blue,
            centerTitle: true,
            foregroundColor: Colors.white,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              elevation: 4.0,
            ),
          ),
        ),
        title: '1st Practice App',
        debugShowCheckedModeBanner: false,
        home: CalculateBMI(),
      );
    });
  }
}
