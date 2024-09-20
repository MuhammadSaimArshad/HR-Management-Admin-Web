import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_management_admin/common_widgets/custom_textform.dart';
import 'package:hr_management_admin/responsive/responsive.dart';
import 'package:hr_management_admin/uttils/colors.dart';

import 'package:hr_management_admin/view/allemployee/view_employee_profile/view_employee_attendance.dart';
import 'package:hr_management_admin/view/allemployee/view_employee_profile/view_employee_leave.dart';
import 'package:hr_management_admin/view/allemployee/view_employee_profile/view_employee_profile.dart';
import 'package:hr_management_admin/view/allemployee/view_employee_profile/view_employee_projects.dart';

class ViewEmployeeDetailProfile extends StatefulWidget {
  const ViewEmployeeDetailProfile({super.key});

  @override
  State<ViewEmployeeDetailProfile> createState() =>
      _ViewEmployeeDetailProfileState();
}

class _ViewEmployeeDetailProfileState extends State<ViewEmployeeDetailProfile> {
  var height, width;

  final searchcontroller = TextEditingController();

  int _buttonsIndex = 0;
  final _schedulesWidgets = [
    ViewEmployeeProfile(),
    ViewEmployeeAttandance(),
    ViewEmployeePorjects(),
    ViewEmployeeLeaves(),
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
                                          Text("Brooklyn Simmons",
                                              style: TextStyle(
                                                fontSize: width * 0.015,
                                                fontWeight: FontWeight.w600,
                                              )),
                                          Text(
                                            "All Employee Brooklyn Simmons",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appGrey),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: width * 0.26,
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
                                      children: [
                                        SizedBox(
                                          width: width * 0.02,
                                        ),
                                        Image.asset("images/recant.png"),
                                        SizedBox(
                                          width: width * 0.01,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Brooklyn Simmons",
                                                style: TextStyle(
                                                  fontSize: width * 0.013,
                                                  fontWeight: FontWeight.w600,
                                                )),
                                            Row(
                                              children: [
                                                Icon(
                                                  CupertinoIcons.briefcase,
                                                  color: AppColors.appBlack,
                                                  size: width * 0.015,
                                                ),
                                                Text(
                                                  "Project Manager",
                                                  style: TextStyle(
                                                      fontSize: width * 0.008,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color:
                                                          AppColors.appBlack),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  CupertinoIcons.briefcase,
                                                  color: AppColors.appBlack,
                                                  size: width * 0.015,
                                                ),
                                                Text(
                                                  "brooklyn.s@example.com",
                                                  style: TextStyle(
                                                      fontSize: width * 0.008,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color:
                                                          AppColors.appBlack),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: width * 0.42,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            // Navigator.push(
                                            //     context,
                                            //     MaterialPageRoute(
                                            //         builder: (context) =>
                                            //             EmployeeSideBar())
                                            //             );
                                          },
                                          child: Container(
                                            height: height * 0.06,
                                            width: width * 0.09,
                                            decoration: BoxDecoration(
                                                color: AppColors.onPrimary,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        width * 0.005)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Icon(
                                                  Icons.edit,
                                                  color: AppColors.appWhite,
                                                ),
                                                // Image.asset("images/filter.png"),
                                                Text("Edit Profile",
                                                    style: TextStyle(
                                                      fontSize: width * 0.01,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color: AppColors.appWhite,
                                                    )),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: width * 0.02,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.05,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.01,
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              height: height * 0.37,
                                              width: width * 0.22,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      width: width * 0.001,
                                                      color: AppColors.appGrey),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          width * 0.003)),
                                              child: Column(
                                                children: [
                                                  // profile
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        _buttonsIndex = 0;
                                                      });
                                                    },
                                                    child: Container(
                                                      height: height * 0.09,
                                                      width: width * 0.22,
                                                      decoration: BoxDecoration(
                                                          color: _buttonsIndex ==
                                                                  0
                                                              ? AppColors
                                                                  .onPrimary
                                                              : Colors
                                                                  .transparent,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      width *
                                                                          0.006)),
                                                      child: Row(
                                                        children: [
                                                          SizedBox(
                                                            width: width * 0.01,
                                                          ),
                                                          Icon(Icons.person,
                                                              color: _buttonsIndex ==
                                                                      0
                                                                  ? AppColors
                                                                      .appWhite
                                                                  : AppColors
                                                                      .appBlack),
                                                          SizedBox(
                                                            width: width * 0.01,
                                                          ),
                                                          Text(
                                                            "Profile",
                                                            style: TextStyle(
                                                              fontSize:
                                                                  width * 0.012,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: _buttonsIndex ==
                                                                      0
                                                                  ? AppColors
                                                                      .appWhite
                                                                  : AppColors
                                                                      .appBlack,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),

                                                  // Attendance
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        _buttonsIndex = 1;
                                                      });
                                                    },
                                                    child: Container(
                                                      height: height * 0.09,
                                                      width: width * 0.22,
                                                      decoration: BoxDecoration(
                                                          color: _buttonsIndex ==
                                                                  1
                                                              ? AppColors
                                                                  .onPrimary
                                                              : Colors
                                                                  .transparent,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      width *
                                                                          0.006)),
                                                      child: Row(
                                                        children: [
                                                          SizedBox(
                                                            width: width * 0.01,
                                                          ),
                                                          Icon(
                                                              Icons
                                                                  .date_range_rounded,
                                                              color: _buttonsIndex ==
                                                                      1
                                                                  ? AppColors
                                                                      .appWhite
                                                                  : AppColors
                                                                      .appBlack),
                                                          SizedBox(
                                                            width: width * 0.01,
                                                          ),
                                                          Text(
                                                            "Attandance",
                                                            style: TextStyle(
                                                              fontSize:
                                                                  width * 0.012,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: _buttonsIndex ==
                                                                      1
                                                                  ? AppColors
                                                                      .appWhite
                                                                  : AppColors
                                                                      .appBlack,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  // Project
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        _buttonsIndex = 2;
                                                      });
                                                    },
                                                    child: Container(
                                                      height: height * 0.09,
                                                      width: width * 0.22,
                                                      decoration: BoxDecoration(
                                                          color: _buttonsIndex ==
                                                                  2
                                                              ? AppColors
                                                                  .onPrimary
                                                              : Colors
                                                                  .transparent,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      width *
                                                                          0.006)),
                                                      child: Row(
                                                        children: [
                                                          SizedBox(
                                                            width: width * 0.01,
                                                          ),
                                                          Icon(
                                                              Icons
                                                                  .date_range_outlined,
                                                              color: _buttonsIndex ==
                                                                      2
                                                                  ? AppColors
                                                                      .appWhite
                                                                  : AppColors
                                                                      .appBlack),
                                                          SizedBox(
                                                            width: width * 0.01,
                                                          ),
                                                          Text(
                                                            "Porject",
                                                            style: TextStyle(
                                                              fontSize:
                                                                  width * 0.012,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: _buttonsIndex ==
                                                                      2
                                                                  ? AppColors
                                                                      .appWhite
                                                                  : AppColors
                                                                      .appBlack,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  // Leaves
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        _buttonsIndex = 3;
                                                      });
                                                    },
                                                    child: Container(
                                                      height: height * 0.09,
                                                      width: width * 0.22,
                                                      decoration: BoxDecoration(
                                                          color: _buttonsIndex ==
                                                                  3
                                                              ? AppColors
                                                                  .onPrimary
                                                              : Colors
                                                                  .transparent,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      width *
                                                                          0.006)),
                                                      child: Row(
                                                        children: [
                                                          SizedBox(
                                                            width: width * 0.01,
                                                          ),
                                                          Icon(
                                                              Icons
                                                                  .leave_bags_at_home_sharp,
                                                              color: _buttonsIndex ==
                                                                      3
                                                                  ? AppColors
                                                                      .appWhite
                                                                  : AppColors
                                                                      .appBlack),
                                                          SizedBox(
                                                            width: width * 0.01,
                                                          ),
                                                          Text(
                                                            "Leave",
                                                            style: TextStyle(
                                                              fontSize:
                                                                  width * 0.012,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: _buttonsIndex ==
                                                                      3
                                                                  ? AppColors
                                                                      .appWhite
                                                                  : AppColors
                                                                      .appBlack,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: height * 0.16,
                                            ),
                                          ],
                                        ),
                                        Container(
                                          height: height * 0.65,
                                          width: width * 0.51,
                                          color: Colors.white,
                                          child:
                                              _schedulesWidgets[_buttonsIndex],
                                        )
                                      ],
                                    )
                                    // Row(
                                    //   mainAxisAlignment:
                                    //       MainAxisAlignment.spaceEvenly,
                                    //   children: [
                                    //     InkWell(
                                    //       onTap: () {
                                    //         setState(() {
                                    //           _buttonIndex = 0;
                                    //         });
                                    //       },
                                    //       child: Row(
                                    //         children: [
                                    //           SizedBox(
                                    //             width: width * 0.01,
                                    //           ),
                                    //           Icon(Icons.person,
                                    //               color: _buttonIndex == 0
                                    //                   ? AppColors.onPrimary
                                    //                   : AppColors.appBlack),
                                    //           SizedBox(
                                    //             width: width * 0.01,
                                    //           ),
                                    //           Text(
                                    //             "Personal Information",
                                    //             style: TextStyle(
                                    //               fontSize: width * 0.012,
                                    //               fontWeight: FontWeight.w500,
                                    //               color: _buttonIndex == 0
                                    //                   ? AppColors.onPrimary
                                    //                   : AppColors.appBlack,
                                    //             ),
                                    //           ),
                                    //         ],
                                    //       ),
                                    //     ),
                                    //     InkWell(
                                    //       onTap: () {
                                    //         setState(() {
                                    //           _buttonIndex = 1;
                                    //         });
                                    //       },
                                    //       child: Row(
                                    //         children: [
                                    //           SizedBox(
                                    //             width: width * 0.01,
                                    //           ),
                                    //           Icon(CupertinoIcons.briefcase,
                                    //               color: _buttonIndex == 1
                                    //                   ? AppColors.onPrimary
                                    //                   : AppColors.appBlack),
                                    //           SizedBox(
                                    //             width: width * 0.01,
                                    //           ),
                                    //           Text(
                                    //             "Professional Information",
                                    //             style: TextStyle(
                                    //               fontSize: width * 0.012,
                                    //               fontWeight: FontWeight.w500,
                                    //               color: _buttonIndex == 1
                                    //                   ? AppColors.onPrimary
                                    //                   : AppColors.appBlack,
                                    //             ),
                                    //           ),
                                    //         ],
                                    //       ),
                                    //     ),
                                    //     InkWell(
                                    //       onTap: () {
                                    //         setState(() {
                                    //           _buttonIndex = 2;
                                    //         });
                                    //       },
                                    //       child: Row(
                                    //         children: [
                                    //           SizedBox(
                                    //             width: width * 0.01,
                                    //           ),
                                    //           Icon(
                                    //               Icons
                                    //                   .document_scanner_outlined,
                                    //               color: _buttonIndex == 2
                                    //                   ? AppColors.onPrimary
                                    //                   : AppColors.appBlack),
                                    //           SizedBox(
                                    //             width: width * 0.01,
                                    //           ),
                                    //           Text(
                                    //             "Document",
                                    //             style: TextStyle(
                                    //               fontSize: width * 0.012,
                                    //               fontWeight: FontWeight.w500,
                                    //               color: _buttonIndex == 2
                                    //                   ? AppColors.onPrimary
                                    //                   : AppColors.appBlack,
                                    //             ),
                                    //           ),
                                    //         ],
                                    //       ),
                                    //     ),
                                    //     InkWell(
                                    //       onTap: () {
                                    //         setState(() {
                                    //           _buttonIndex = 3;
                                    //         });
                                    //       },
                                    //       child: Row(
                                    //         children: [
                                    //           SizedBox(
                                    //             width: width * 0.01,
                                    //           ),
                                    //           Icon(Icons.account_circle_sharp,
                                    //               color: _buttonIndex == 3
                                    //                   ? AppColors.onPrimary
                                    //                   : AppColors.appBlack),
                                    //           SizedBox(
                                    //             width: width * 0.01,
                                    //           ),
                                    //           Text(
                                    //             "Account Acess",
                                    //             style: TextStyle(
                                    //               fontSize: width * 0.012,
                                    //               fontWeight: FontWeight.w500,
                                    //               color: _buttonIndex == 3
                                    //                   ? AppColors.onPrimary
                                    //                   : AppColors.appBlack,
                                    //             ),
                                    //           ),
                                    //         ],
                                    //       ),
                                    //     ),
                                    //   ],
                                    // ),
                                    // SizedBox(
                                    //   height: height * 0.01,
                                    // ),
                                    // Container(
                                    //   height: height * 0.005,
                                    //   width: width * 0.66,
                                    //   color: AppColors.appGrey,
                                    //   child: Row(
                                    //     children: [
                                    //       SizedBox(
                                    //         width: width * 0.01,
                                    //       ),
                                    //       Container(
                                    //           height: height * 0.005,
                                    //           width: width * 0.14,
                                    //           color: _buttonIndex == 0
                                    //               ? AppColors.onPrimary
                                    //               : Colors.transparent),
                                    //       SizedBox(
                                    //         width: width * 0.05,
                                    //       ),
                                    //       Container(
                                    //           height: height * 0.005,
                                    //           width: width * 0.16,
                                    //           color: _buttonIndex == 1
                                    //               ? AppColors.onPrimary
                                    //               : Colors.transparent),
                                    //       SizedBox(
                                    //         width: width * 0.05,
                                    //       ),
                                    //       Container(
                                    //           height: height * 0.005,
                                    //           width: width * 0.09,
                                    //           color: _buttonIndex == 2
                                    //               ? AppColors.onPrimary
                                    //               : Colors.transparent),
                                    //       SizedBox(
                                    //         width: width * 0.05,
                                    //       ),
                                    //       Container(
                                    //           height: height * 0.005,
                                    //           width: width * 0.11,
                                    //           color: _buttonIndex == 3
                                    //               ? AppColors.onPrimary
                                    //               : Colors.transparent)
                                    //     ],
                                    //   ),
                                    // ),
                                    // SizedBox(
                                    //   height: height * 0.01,
                                    // ),
                                    // Flexible(
                                    //     flex: 1,
                                    //     child: Container(
                                    //       color: Colors.white,
                                    //       child: _scheduleWidgets[_buttonIndex],
                                    //     ))
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
