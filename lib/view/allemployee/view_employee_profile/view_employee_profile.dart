import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:hr_management_admin/view/allemployee/view_employee_profile/view_employee/account_access.dart';
import 'package:hr_management_admin/view/allemployee/view_employee_profile/view_employee/document.dart';
import 'package:hr_management_admin/view/allemployee/view_employee_profile/view_employee/personal_information.dart';
import 'package:hr_management_admin/view/allemployee/view_employee_profile/view_employee/professional_information.dart';

import '../../../uttils/colors.dart';

class ViewEmployeeProfile extends StatefulWidget {
  const ViewEmployeeProfile({super.key});

  @override
  State<ViewEmployeeProfile> createState() => _ViewEmployeeProfileState();
}

class _ViewEmployeeProfileState extends State<ViewEmployeeProfile> {
  var height, width;
  int _buttonIndex = 0;
  final _scheduleWidgets = [
    ViewEmployeeProfilePersonalInformation(),
    ViewEmployeeProfileProfessonaInformation(),
    ViewEmployeeProfileDocument(),
    ViewEmployeeProfileAccoutAcess()
  ];
  final namecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: height * 0.65,
        width: width * 0.51,
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _buttonIndex = 0;
                    });
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Icon(Icons.person,
                          color: _buttonIndex == 0
                              ? AppColors.onPrimary
                              : AppColors.appBlack),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Text(
                        "Personal Information",
                        style: TextStyle(
                          fontSize: width * 0.01,
                          fontWeight: FontWeight.w500,
                          color: _buttonIndex == 0
                              ? AppColors.onPrimary
                              : AppColors.appBlack,
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _buttonIndex = 1;
                    });
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Icon(CupertinoIcons.briefcase,
                          color: _buttonIndex == 1
                              ? AppColors.onPrimary
                              : AppColors.appBlack),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Text(
                        "Professional Information",
                        style: TextStyle(
                          fontSize: width * 0.01,
                          fontWeight: FontWeight.w500,
                          color: _buttonIndex == 1
                              ? AppColors.onPrimary
                              : AppColors.appBlack,
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _buttonIndex = 2;
                    });
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Icon(Icons.document_scanner_outlined,
                          color: _buttonIndex == 2
                              ? AppColors.onPrimary
                              : AppColors.appBlack),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Text(
                        "Document",
                        style: TextStyle(
                          fontSize: width * 0.01,
                          fontWeight: FontWeight.w500,
                          color: _buttonIndex == 2
                              ? AppColors.onPrimary
                              : AppColors.appBlack,
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _buttonIndex = 3;
                    });
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Icon(Icons.account_circle_sharp,
                          color: _buttonIndex == 3
                              ? AppColors.onPrimary
                              : AppColors.appBlack),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Text(
                        "Account Acess",
                        style: TextStyle(
                          fontSize: width * 0.01,
                          fontWeight: FontWeight.w500,
                          color: _buttonIndex == 3
                              ? AppColors.onPrimary
                              : AppColors.appBlack,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              height: height * 0.005,
              width: width * 0.49,
              color: AppColors.appGrey,
              child: Row(
                children: [
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Container(
                      height: height * 0.005,
                      width: width * 0.12,
                      color: _buttonIndex == 0
                          ? AppColors.onPrimary
                          : Colors.transparent),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Container(
                      height: height * 0.005,
                      width: width * 0.14,
                      color: _buttonIndex == 1
                          ? AppColors.onPrimary
                          : Colors.transparent),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Container(
                      height: height * 0.005,
                      width: width * 0.07,
                      color: _buttonIndex == 2
                          ? AppColors.onPrimary
                          : Colors.transparent),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  Container(
                      height: height * 0.005,
                      width: width * 0.09,
                      color: _buttonIndex == 3
                          ? AppColors.onPrimary
                          : Colors.transparent)
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              height: height * 0.6,
              width: width * 0.51,
              color: Colors.white,
              child: _scheduleWidgets[_buttonIndex],
            )
          ],
        )),
      ),
    );
  }
}
