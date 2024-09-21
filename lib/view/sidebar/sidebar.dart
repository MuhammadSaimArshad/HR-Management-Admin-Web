import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_management_admin/responsive/responsive.dart';
import 'package:hr_management_admin/uttils/colors.dart';
import 'package:hr_management_admin/view/alldepartment/alldepartment.dart';
import 'package:hr_management_admin/view/allemployee/allemployee.dart';
import 'package:hr_management_admin/view/candidates/candidates.dart';
import 'package:hr_management_admin/view/dashborad/dashborad.dart';
import 'package:hr_management_admin/view/holiday/holiday.dart';
import 'package:hr_management_admin/view/leaves/leaves.dart';
import 'package:hr_management_admin/view/setting/setting.dart';
import '../attentdance/attendance.dart';
import '../jobs/jobs.dart';
import '../payrol/payroll.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  var height, width;

  int _buttonIndex = 0;
  final _scheduleWidgets = [
    const Dashborad(),
    const AllEmployee(),
    const AllDepartment(),
    const Attendance(),
    const PayRoll(),
    const Jobs(),
    const Candidates(),
    const Leaves(),
    const Holiday(),
    const Setting(),
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
                  Expanded(
                      child: Center(
                    child: Container(
                      height: height * 0.97,
                      width: width * 0.18,
                      decoration: BoxDecoration(
                          color: AppColors.appGrey,
                          border: Border.all(
                              width: width * 0.001, color: AppColors.appGrey),
                          borderRadius: BorderRadius.circular(width * 0.01)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: width * 0.015,
                              ),
                              Image.asset(
                                "images/Frame.png",
                                width: width * 0.04,
                                height: height * 0.07,
                              ),
                              Text(
                                "HRMS",
                                style: TextStyle(
                                    fontSize: width * 0.022,
                                    fontWeight: FontWeight.w300,
                                    color: AppColors.appBlack),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          // Dashborad
                          InkWell(
                            onTap: () {
                              setState(() {
                                _buttonIndex = 0;
                              });
                            },
                            child: Container(
                              height: height * 0.07,
                              width: width * 0.16,
                              decoration: BoxDecoration(
                                color: _buttonIndex == 0
                                    ? Colors.grey[300]
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(width * 0.006),
                                    bottomRight:
                                        Radius.circular(width * 0.006)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                      height: height * 0.07,
                                      width: width * 0.002,
                                      color: _buttonIndex == 0
                                          ? AppColors.onPrimary
                                          : Colors.transparent),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Icon(Icons.dashboard_rounded,
                                      color: _buttonIndex == 0
                                          ? AppColors.onPrimary
                                          : AppColors.appBlack),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Text(
                                    "Dashboard",
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
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          // All Employees
                          InkWell(
                            onTap: () {
                              setState(() {
                                _buttonIndex = 1;
                              });
                            },
                            child: Container(
                              height: height * 0.07,
                              width: width * 0.16,
                              decoration: BoxDecoration(
                                color: _buttonIndex == 1
                                    ? Colors.grey[300]
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(width * 0.006),
                                    bottomRight:
                                        Radius.circular(width * 0.006)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                      height: height * 0.07,
                                      width: width * 0.002,
                                      color: _buttonIndex == 1
                                          ? AppColors.onPrimary
                                          : Colors.transparent),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Icon(CupertinoIcons.person_3,
                                      color: _buttonIndex == 1
                                          ? AppColors.onPrimary
                                          : AppColors.appBlack),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Text(
                                    "All Employees",
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
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          // All Departments
                          InkWell(
                            onTap: () {
                              setState(() {
                                _buttonIndex = 2;
                              });
                            },
                            child: Container(
                              height: height * 0.07,
                              width: width * 0.16,
                              decoration: BoxDecoration(
                                color: _buttonIndex == 2
                                    ? Colors.grey[300]
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(width * 0.006),
                                    bottomRight:
                                        Radius.circular(width * 0.006)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                      height: height * 0.07,
                                      width: width * 0.002,
                                      color: _buttonIndex == 2
                                          ? AppColors.onPrimary
                                          : Colors.transparent),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Icon(Icons.change_circle_outlined,
                                      color: _buttonIndex == 2
                                          ? AppColors.onPrimary
                                          : AppColors.appBlack),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Text(
                                    "All Departments",
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
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          // Attendance
                          InkWell(
                            onTap: () {
                              setState(() {
                                _buttonIndex = 3;
                              });
                            },
                            child: Container(
                              height: height * 0.07,
                              width: width * 0.16,
                              decoration: BoxDecoration(
                                color: _buttonIndex == 3
                                    ? Colors.grey[300]
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(width * 0.006),
                                    bottomRight:
                                        Radius.circular(width * 0.006)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                      height: height * 0.07,
                                      width: width * 0.002,
                                      color: _buttonIndex == 3
                                          ? AppColors.onPrimary
                                          : Colors.transparent),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Icon(Icons.date_range_rounded,
                                      color: _buttonIndex == 3
                                          ? AppColors.onPrimary
                                          : AppColors.appBlack),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Text(
                                    "Attendance",
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
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          // Payroll
                          InkWell(
                            onTap: () {
                              setState(() {
                                _buttonIndex = 4;
                              });
                            },
                            child: Container(
                              height: height * 0.07,
                              width: width * 0.16,
                              decoration: BoxDecoration(
                                color: _buttonIndex == 4
                                    ? Colors.grey[300]
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(width * 0.006),
                                    bottomRight:
                                        Radius.circular(width * 0.006)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                      height: height * 0.07,
                                      width: width * 0.002,
                                      color: _buttonIndex == 4
                                          ? AppColors.onPrimary
                                          : Colors.transparent),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Icon(Icons.circle_outlined,
                                      color: _buttonIndex == 4
                                          ? AppColors.onPrimary
                                          : AppColors.appBlack),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Text(
                                    "Payroll",
                                    style: TextStyle(
                                      fontSize: width * 0.012,
                                      fontWeight: FontWeight.w500,
                                      color: _buttonIndex == 4
                                          ? AppColors.onPrimary
                                          : AppColors.appBlack,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          // Jobs
                          InkWell(
                            onTap: () {
                              setState(() {
                                _buttonIndex = 5;
                              });
                            },
                            child: Container(
                              height: height * 0.07,
                              width: width * 0.16,
                              decoration: BoxDecoration(
                                color: _buttonIndex == 5
                                    ? Colors.grey[300]
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(width * 0.006),
                                    bottomRight:
                                        Radius.circular(width * 0.006)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                      height: height * 0.07,
                                      width: width * 0.002,
                                      color: _buttonIndex == 5
                                          ? AppColors.onPrimary
                                          : Colors.transparent),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Icon(CupertinoIcons.briefcase,
                                      color: _buttonIndex == 5
                                          ? AppColors.onPrimary
                                          : AppColors.appBlack),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Text(
                                    "Jobs",
                                    style: TextStyle(
                                      fontSize: width * 0.012,
                                      fontWeight: FontWeight.w500,
                                      color: _buttonIndex == 5
                                          ? AppColors.onPrimary
                                          : AppColors.appBlack,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          // Candidates
                          InkWell(
                            onTap: () {
                              setState(() {
                                _buttonIndex = 6;
                              });
                            },
                            child: Container(
                              height: height * 0.07,
                              width: width * 0.16,
                              decoration: BoxDecoration(
                                color: _buttonIndex == 6
                                    ? Colors.grey[300]
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(width * 0.006),
                                    bottomRight:
                                        Radius.circular(width * 0.006)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                      height: height * 0.07,
                                      width: width * 0.002,
                                      color: _buttonIndex == 6
                                          ? AppColors.onPrimary
                                          : Colors.transparent),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Icon(Icons.person_2_outlined,
                                      color: _buttonIndex == 6
                                          ? AppColors.onPrimary
                                          : AppColors.appBlack),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Text(
                                    "Candidates",
                                    style: TextStyle(
                                      fontSize: width * 0.012,
                                      fontWeight: FontWeight.w500,
                                      color: _buttonIndex == 6
                                          ? AppColors.onPrimary
                                          : AppColors.appBlack,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          // Leaves
                          InkWell(
                            onTap: () {
                              setState(() {
                                _buttonIndex = 7;
                              });
                            },
                            child: Container(
                              height: height * 0.07,
                              width: width * 0.16,
                              decoration: BoxDecoration(
                                color: _buttonIndex == 7
                                    ? Colors.grey[300]
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(width * 0.006),
                                    bottomRight:
                                        Radius.circular(width * 0.006)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                      height: height * 0.07,
                                      width: width * 0.002,
                                      color: _buttonIndex == 7
                                          ? AppColors.onPrimary
                                          : Colors.transparent),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Icon(Icons.leave_bags_at_home_sharp,
                                      color: _buttonIndex == 7
                                          ? AppColors.onPrimary
                                          : AppColors.appBlack),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Text(
                                    "Leaves",
                                    style: TextStyle(
                                      fontSize: width * 0.012,
                                      fontWeight: FontWeight.w500,
                                      color: _buttonIndex == 7
                                          ? AppColors.onPrimary
                                          : AppColors.appBlack,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          // Holidays
                          InkWell(
                            onTap: () {
                              setState(() {
                                _buttonIndex = 8;
                              });
                            },
                            child: Container(
                              height: height * 0.07,
                              width: width * 0.16,
                              decoration: BoxDecoration(
                                color: _buttonIndex == 8
                                    ? Colors.grey[300]
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(width * 0.006),
                                    bottomRight:
                                        Radius.circular(width * 0.006)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                      height: height * 0.07,
                                      width: width * 0.002,
                                      color: _buttonIndex == 8
                                          ? AppColors.onPrimary
                                          : Colors.transparent),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Icon(Icons.date_range_sharp,
                                      color: _buttonIndex == 8
                                          ? AppColors.onPrimary
                                          : AppColors.appBlack),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Text(
                                    "Holidays",
                                    style: TextStyle(
                                      fontSize: width * 0.012,
                                      fontWeight: FontWeight.w500,
                                      color: _buttonIndex == 8
                                          ? AppColors.onPrimary
                                          : AppColors.appBlack,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          // Settings
                          InkWell(
                            onTap: () {
                              setState(() {
                                _buttonIndex = 9;
                              });
                            },
                            child: Container(
                              height: height * 0.07,
                              width: width * 0.16,
                              decoration: BoxDecoration(
                                color: _buttonIndex == 9
                                    ? Colors.grey[300]
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(width * 0.006),
                                    bottomRight:
                                        Radius.circular(width * 0.006)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                      height: height * 0.07,
                                      width: width * 0.002,
                                      color: _buttonIndex == 9
                                          ? AppColors.onPrimary
                                          : Colors.transparent),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Icon(Icons.settings,
                                      color: _buttonIndex == 9
                                          ? AppColors.onPrimary
                                          : AppColors.appBlack),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Text(
                                    "Settings",
                                    style: TextStyle(
                                      fontSize: width * 0.012,
                                      fontWeight: FontWeight.w500,
                                      color: _buttonIndex == 9
                                          ? AppColors.onPrimary
                                          : AppColors.appBlack,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: width * 0.03,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: height * 0.05,
                                  width: width * 0.05,
                                  decoration: BoxDecoration(
                                      color: AppColors.onPrimary,
                                      borderRadius:
                                          BorderRadius.circular(width * 0.005)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Icon(
                                        Icons.light_mode,
                                        color: AppColors.appWhite,
                                      ),
                                      Text("Light",
                                          style: TextStyle(
                                            fontSize: width * 0.01,
                                            fontWeight: FontWeight.w300,
                                            color: AppColors.appWhite,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: height * 0.05,
                                  width: width * 0.05,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius:
                                          BorderRadius.circular(width * 0.005)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Icon(
                                        Icons.dark_mode_outlined,
                                        color: AppColors.appBlack,
                                      ),
                                      Text("Dark",
                                          style: TextStyle(
                                            fontSize: width * 0.01,
                                            fontWeight: FontWeight.w300,
                                            color: AppColors.appBlack,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                        ],
                      ),
                    ),
                  )),
                  Flexible(
                      flex: 4,
                      child: Container(
                        color: Colors.black,
                        child: _scheduleWidgets[_buttonIndex],
                      ))
                ],
              ),
            ),
          );
  }
}
