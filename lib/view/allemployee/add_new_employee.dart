import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_management_admin/common_widgets/custom_textform.dart';
import 'package:hr_management_admin/responsive/responsive.dart';
import 'package:hr_management_admin/uttils/colors.dart';
import 'package:hr_management_admin/view/allemployee/personal_information.dart';

class AddNewEmployee extends StatefulWidget {
  const AddNewEmployee({super.key});

  @override
  State<AddNewEmployee> createState() => _AddNewEmployeeState();
}

class _AddNewEmployeeState extends State<AddNewEmployee> {
  var height, width;

  final searchcontroller = TextEditingController();
  int _buttonIndex = 0;
  final _scheduleWidgets = [
    PersonalInformation(),
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return ResponsiveWidget.isSmallScreen(context)
        ? Scaffold(
            body: SizedBox(
              height: height,
              width: width,
            ),
          )
        : Scaffold(
            body: SizedBox(
              height: height,
              width: width,
              child: Row(
                children: [
                  Expanded(child: Column()),
                  Flexible(
                      flex: 4,
                      child: Container(
                        height: height,
                        width: width,
                        color: Colors.white,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                  height: height * 0.13,
                                  width: width,
                                  color: Colors.white,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: width * 0.03,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("All Employee",
                                              style: TextStyle(
                                                fontSize: width * 0.015,
                                                fontWeight: FontWeight.w600,
                                              )),
                                          Text(
                                            "All Employee information",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appGrey),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: width * 0.3,
                                      ),
                                      SizedBox(
                                        height: height * 0.07,
                                        width: width * 0.16,
                                        child: AppTextField(
                                          hint: "Search",
                                          controller: searchcontroller,
                                          borderColor: AppColors.appGrey,
                                          focusBorderColor: AppColors.appGrey,
                                          borderRadius: 8,
                                          prefixIcon: Icon(Icons.search),
                                        ),
                                      ),
                                      SizedBox(
                                        width: width * 0.005,
                                      ),
                                      Container(
                                        height: height * 0.07,
                                        width: width * 0.03,
                                        decoration: BoxDecoration(
                                            color: AppColors.appGrey,
                                            borderRadius: BorderRadius.circular(
                                                width * 0.01)),
                                        child: const Center(
                                          child: Icon(Icons.notifications_none),
                                        ),
                                      ),
                                      SizedBox(
                                        width: width * 0.005,
                                      ),
                                      Container(
                                        height: height * 0.07,
                                        width: width * 0.15,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                width: width * 0.001,
                                                color: AppColors.appGrey),
                                            borderRadius: BorderRadius.circular(
                                                width * 0.003)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              height: height * 0.06,
                                              width: width * 0.03,
                                              decoration: BoxDecoration(
                                                  image: const DecorationImage(
                                                      image: AssetImage(
                                                          "images/recantgle.png"),
                                                      fit: BoxFit.cover),
                                                  color: AppColors.appGrey,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          width * 0.001)),
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text("Robert Heln",
                                                    style: TextStyle(
                                                      fontSize: width * 0.011,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    )),
                                                Text(
                                                  "HR MANAGER",
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      fontSize: width * 0.008,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color: AppColors.appGrey),
                                                ),
                                              ],
                                            ),
                                            const Icon(Icons
                                                .keyboard_arrow_down_outlined),
                                          ],
                                        ),
                                      )
                                    ],
                                  )),
                              Container(
                                height: height * 0.9,
                                width: width * 0.75,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        width: width * 0.001,
                                        color: AppColors.appGrey),
                                    borderRadius:
                                        BorderRadius.circular(width * 0.003)),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: height * 0.03,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
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
                                                  fontSize: width * 0.012,
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
                                                  fontSize: width * 0.012,
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
                                              Icon(
                                                  Icons
                                                      .document_scanner_outlined,
                                                  color: _buttonIndex == 2
                                                      ? AppColors.onPrimary
                                                      : AppColors.appBlack),
                                              SizedBox(
                                                width: width * 0.01,
                                              ),
                                              Text(
                                                "Document",
                                                style: TextStyle(
                                                  fontSize: width * 0.012,
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
                                                  fontSize: width * 0.012,
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
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.05,
                                        ),
                                        Container(
                                            height: height * 0.005,
                                            width: width * 0.14,
                                            color: _buttonIndex == 0
                                                ? AppColors.onPrimary
                                                : Colors.transparent),
                                        SizedBox(
                                          width: width * 0.06,
                                        ),
                                        Container(
                                            height: height * 0.005,
                                            width: width * 0.16,
                                            color: _buttonIndex == 1
                                                ? AppColors.onPrimary
                                                : Colors.transparent),
                                        SizedBox(
                                          width: width * 0.05,
                                        ),
                                        Container(
                                            height: height * 0.005,
                                            width: width * 0.09,
                                            color: _buttonIndex == 2
                                                ? AppColors.onPrimary
                                                : Colors.transparent),
                                        SizedBox(
                                          width: width * 0.05,
                                        ),
                                        Container(
                                            height: height * 0.005,
                                            width: width * 0.11,
                                            color: _buttonIndex == 3
                                                ? AppColors.onPrimary
                                                : Colors.transparent)
                                      ],
                                    ),
                                    SizedBox(
                                        width: width * 0.65,
                                        child: const Divider(
                                          color: AppColors.appGrey,
                                        )),
                                    _scheduleWidgets[_buttonIndex],
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: height * 0.03,
                              ),
                            ],
                          ),
                        ),
                      ))
                ],
              ),
            ),
          );
  }
}
