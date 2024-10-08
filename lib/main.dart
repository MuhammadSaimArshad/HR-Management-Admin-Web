import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_management_admin/responsive/responsive.dart';
import 'package:hr_management_admin/view/login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const ResponsiveWidget(
        largeScreen: Login(),
        mediumScreen: Login(),
        smallScreen: Login(),
      ),
    );
  }
}
