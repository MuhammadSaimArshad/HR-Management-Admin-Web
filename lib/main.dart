import 'package:flutter/material.dart';
import 'package:hr_management_admin/responsive/responsive.dart';
import 'package:hr_management_admin/view/allemployee/add_new_employee.dart';
import 'package:hr_management_admin/view/allemployee/allemployee.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const ResponsiveWidget(
        largeScreen: AddNewEmployee(),
        mediumScreen: AddNewEmployee(),
        smallScreen: AddNewEmployee(),
      ),
    );
  }
}
