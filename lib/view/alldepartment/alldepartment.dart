import 'package:flutter/material.dart';
import 'package:hr_management_admin/common_widgets/custom_textform.dart';
import 'package:hr_management_admin/responsive/responsive.dart';
import 'package:hr_management_admin/uttils/colors.dart';

import '../allemployee/employeesidebar/employeesidebar.dart';

class AllDepartment extends StatefulWidget {
  const AllDepartment({super.key});

  @override
  State<AllDepartment> createState() => _AllDepartmentState();
}

class _AllDepartmentState extends State<AllDepartment> {
  var height, width;

  final searchcontroller = TextEditingController();

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
                                          Text("All Department",
                                              style: TextStyle(
                                                fontSize: width * 0.015,
                                                fontWeight: FontWeight.w600,
                                              )),
                                          Text(
                                            "All Department information",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appGrey),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: width * 0.28,
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
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: width * 0.01,
                                          ),
                                          SizedBox(
                                            height: height * 0.06,
                                            width: width * 0.2,
                                            child: AppTextField(
                                              hint: "Search",
                                              controller: searchcontroller,
                                              borderColor: AppColors.appGrey,
                                              focusBorderColor:
                                                  AppColors.appGrey,
                                              borderRadius: 8,
                                              prefixIcon: Icon(Icons.search),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            height: height * 0.43,
                                            width: width * 0.35,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        width * 0.005),
                                                border: Border.all(
                                                  width: width * 0.001,
                                                  color: AppColors.appGrey,
                                                )),
                                            child: Column(
                                              children: [
                                                ListTile(
                                                  title: Text(
                                                      "Design Department",
                                                      style: TextStyle(
                                                        fontSize: width * 0.012,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      )),
                                                  subtitle: Text(
                                                    "20 Member",
                                                    style: TextStyle(
                                                        fontSize: width * 0.008,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color:
                                                            AppColors.appGrey),
                                                  ),
                                                  trailing: InkWell(
                                                    onTap: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  EmployeeSideBar()));
                                                    },
                                                    child: Text(
                                                      "View all",
                                                      style: TextStyle(
                                                          fontSize:
                                                              width * 0.01,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color: AppColors
                                                              .onPrimary),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                    width: width * 0.32,
                                                    child: const Divider(
                                                      color: AppColors.appGrey,
                                                    )),
                                                ListTile(
                                                    leading: CircleAvatar(
                                                      radius: width * 0.01,
                                                      backgroundImage:
                                                          const AssetImage(
                                                              "images/recantgle.png"),
                                                    ),
                                                    title: Text(
                                                        "Dianne Russell",
                                                        style: TextStyle(
                                                          fontSize:
                                                              width * 0.009,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        )),
                                                    subtitle: Text(
                                                      "Lead UI/UX Designer",
                                                      style: TextStyle(
                                                          fontSize:
                                                              width * 0.007,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color: AppColors
                                                              .appGrey),
                                                    ),
                                                    trailing: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: width * 0.01,
                                                    )),
                                                ListTile(
                                                    leading: CircleAvatar(
                                                      radius: width * 0.01,
                                                      backgroundImage:
                                                          const AssetImage(
                                                              "images/recantgle.png"),
                                                    ),
                                                    title: Text(
                                                        "Dianne Russell",
                                                        style: TextStyle(
                                                          fontSize:
                                                              width * 0.009,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        )),
                                                    subtitle: Text(
                                                      "Lead UI/UX Designer",
                                                      style: TextStyle(
                                                          fontSize:
                                                              width * 0.007,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color: AppColors
                                                              .appGrey),
                                                    ),
                                                    trailing: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: width * 0.01,
                                                    )),
                                                ListTile(
                                                    leading: CircleAvatar(
                                                      radius: width * 0.01,
                                                      backgroundImage:
                                                          const AssetImage(
                                                              "images/recantgle.png"),
                                                    ),
                                                    title: Text(
                                                        "Dianne Russell",
                                                        style: TextStyle(
                                                          fontSize:
                                                              width * 0.009,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        )),
                                                    subtitle: Text(
                                                      "Lead UI/UX Designer",
                                                      style: TextStyle(
                                                          fontSize:
                                                              width * 0.007,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color: AppColors
                                                              .appGrey),
                                                    ),
                                                    trailing: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: width * 0.01,
                                                    )),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: height * 0.43,
                                            width: width * 0.35,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        width * 0.005),
                                                border: Border.all(
                                                  width: width * 0.001,
                                                  color: AppColors.appGrey,
                                                )),
                                            child: Column(
                                              children: [
                                                ListTile(
                                                  title: Text(
                                                      "Sales Department",
                                                      style: TextStyle(
                                                        fontSize: width * 0.012,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      )),
                                                  subtitle: Text(
                                                    "20 Member",
                                                    style: TextStyle(
                                                        fontSize: width * 0.008,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color:
                                                            AppColors.appGrey),
                                                  ),
                                                  trailing: InkWell(
                                                    onTap: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  EmployeeSideBar()));
                                                    },
                                                    child: Text(
                                                      "View all",
                                                      style: TextStyle(
                                                          fontSize:
                                                              width * 0.01,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color: AppColors
                                                              .onPrimary),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                    width: width * 0.32,
                                                    child: const Divider(
                                                      color: AppColors.appGrey,
                                                    )),
                                                ListTile(
                                                    leading: CircleAvatar(
                                                      radius: width * 0.01,
                                                      backgroundImage:
                                                          const AssetImage(
                                                              "images/recantgle.png"),
                                                    ),
                                                    title: Text(
                                                        "Dianne Russell",
                                                        style: TextStyle(
                                                          fontSize:
                                                              width * 0.009,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        )),
                                                    subtitle: Text(
                                                      "Lead UI/UX Designer",
                                                      style: TextStyle(
                                                          fontSize:
                                                              width * 0.007,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color: AppColors
                                                              .appGrey),
                                                    ),
                                                    trailing: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: width * 0.01,
                                                    )),
                                                ListTile(
                                                    leading: CircleAvatar(
                                                      radius: width * 0.01,
                                                      backgroundImage:
                                                          const AssetImage(
                                                              "images/recantgle.png"),
                                                    ),
                                                    title: Text(
                                                        "Dianne Russell",
                                                        style: TextStyle(
                                                          fontSize:
                                                              width * 0.009,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        )),
                                                    subtitle: Text(
                                                      "Lead UI/UX Designer",
                                                      style: TextStyle(
                                                          fontSize:
                                                              width * 0.007,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color: AppColors
                                                              .appGrey),
                                                    ),
                                                    trailing: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: width * 0.01,
                                                    )),
                                                ListTile(
                                                    leading: CircleAvatar(
                                                      radius: width * 0.01,
                                                      backgroundImage:
                                                          const AssetImage(
                                                              "images/recantgle.png"),
                                                    ),
                                                    title: Text(
                                                        "Dianne Russell",
                                                        style: TextStyle(
                                                          fontSize:
                                                              width * 0.009,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        )),
                                                    subtitle: Text(
                                                      "Lead UI/UX Designer",
                                                      style: TextStyle(
                                                          fontSize:
                                                              width * 0.007,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color: AppColors
                                                              .appGrey),
                                                    ),
                                                    trailing: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: width * 0.01,
                                                    )),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            height: height * 0.43,
                                            width: width * 0.35,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        width * 0.005),
                                                border: Border.all(
                                                  width: width * 0.001,
                                                  color: AppColors.appGrey,
                                                )),
                                            child: Column(
                                              children: [
                                                ListTile(
                                                  title: Text(
                                                      "Project Manager Department",
                                                      style: TextStyle(
                                                        fontSize: width * 0.012,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      )),
                                                  subtitle: Text(
                                                    "20 Member",
                                                    style: TextStyle(
                                                        fontSize: width * 0.008,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color:
                                                            AppColors.appGrey),
                                                  ),
                                                  trailing: InkWell(
                                                    onTap: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  EmployeeSideBar()));
                                                    },
                                                    child: Text(
                                                      "View all",
                                                      style: TextStyle(
                                                          fontSize:
                                                              width * 0.01,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color: AppColors
                                                              .onPrimary),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                    width: width * 0.32,
                                                    child: const Divider(
                                                      color: AppColors.appGrey,
                                                    )),
                                                ListTile(
                                                    leading: CircleAvatar(
                                                      radius: width * 0.01,
                                                      backgroundImage:
                                                          const AssetImage(
                                                              "images/recantgle.png"),
                                                    ),
                                                    title: Text(
                                                        "Dianne Russell",
                                                        style: TextStyle(
                                                          fontSize:
                                                              width * 0.009,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        )),
                                                    subtitle: Text(
                                                      "Lead UI/UX Designer",
                                                      style: TextStyle(
                                                          fontSize:
                                                              width * 0.007,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color: AppColors
                                                              .appGrey),
                                                    ),
                                                    trailing: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: width * 0.01,
                                                    )),
                                                ListTile(
                                                    leading: CircleAvatar(
                                                      radius: width * 0.01,
                                                      backgroundImage:
                                                          const AssetImage(
                                                              "images/recantgle.png"),
                                                    ),
                                                    title: Text(
                                                        "Dianne Russell",
                                                        style: TextStyle(
                                                          fontSize:
                                                              width * 0.009,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        )),
                                                    subtitle: Text(
                                                      "Lead UI/UX Designer",
                                                      style: TextStyle(
                                                          fontSize:
                                                              width * 0.007,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color: AppColors
                                                              .appGrey),
                                                    ),
                                                    trailing: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: width * 0.01,
                                                    )),
                                                ListTile(
                                                    leading: CircleAvatar(
                                                      radius: width * 0.01,
                                                      backgroundImage:
                                                          const AssetImage(
                                                              "images/recantgle.png"),
                                                    ),
                                                    title: Text(
                                                        "Dianne Russell",
                                                        style: TextStyle(
                                                          fontSize:
                                                              width * 0.009,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        )),
                                                    subtitle: Text(
                                                      "Lead UI/UX Designer",
                                                      style: TextStyle(
                                                          fontSize:
                                                              width * 0.007,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color: AppColors
                                                              .appGrey),
                                                    ),
                                                    trailing: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: width * 0.01,
                                                    )),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: height * 0.43,
                                            width: width * 0.35,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        width * 0.005),
                                                border: Border.all(
                                                  width: width * 0.001,
                                                  color: AppColors.appGrey,
                                                )),
                                            child: Column(
                                              children: [
                                                ListTile(
                                                  title: Text(
                                                      "Marketing Department",
                                                      style: TextStyle(
                                                        fontSize: width * 0.012,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      )),
                                                  subtitle: Text(
                                                    "20 Member",
                                                    style: TextStyle(
                                                        fontSize: width * 0.008,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color:
                                                            AppColors.appGrey),
                                                  ),
                                                  trailing: InkWell(
                                                    onTap: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  EmployeeSideBar()));
                                                    },
                                                    child: Text(
                                                      "View all",
                                                      style: TextStyle(
                                                          fontSize:
                                                              width * 0.01,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color: AppColors
                                                              .onPrimary),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                    width: width * 0.32,
                                                    child: const Divider(
                                                      color: AppColors.appGrey,
                                                    )),
                                                ListTile(
                                                    leading: CircleAvatar(
                                                      radius: width * 0.01,
                                                      backgroundImage:
                                                          const AssetImage(
                                                              "images/recantgle.png"),
                                                    ),
                                                    title: Text(
                                                        "Dianne Russell",
                                                        style: TextStyle(
                                                          fontSize:
                                                              width * 0.009,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        )),
                                                    subtitle: Text(
                                                      "Lead UI/UX Designer",
                                                      style: TextStyle(
                                                          fontSize:
                                                              width * 0.007,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color: AppColors
                                                              .appGrey),
                                                    ),
                                                    trailing: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: width * 0.01,
                                                    )),
                                                ListTile(
                                                    leading: CircleAvatar(
                                                      radius: width * 0.01,
                                                      backgroundImage:
                                                          const AssetImage(
                                                              "images/recantgle.png"),
                                                    ),
                                                    title: Text(
                                                        "Dianne Russell",
                                                        style: TextStyle(
                                                          fontSize:
                                                              width * 0.009,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        )),
                                                    subtitle: Text(
                                                      "Lead UI/UX Designer",
                                                      style: TextStyle(
                                                          fontSize:
                                                              width * 0.007,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color: AppColors
                                                              .appGrey),
                                                    ),
                                                    trailing: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: width * 0.01,
                                                    )),
                                                ListTile(
                                                    leading: CircleAvatar(
                                                      radius: width * 0.01,
                                                      backgroundImage:
                                                          const AssetImage(
                                                              "images/recantgle.png"),
                                                    ),
                                                    title: Text(
                                                        "Dianne Russell",
                                                        style: TextStyle(
                                                          fontSize:
                                                              width * 0.009,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        )),
                                                    subtitle: Text(
                                                      "Lead UI/UX Designer",
                                                      style: TextStyle(
                                                          fontSize:
                                                              width * 0.007,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color: AppColors
                                                              .appGrey),
                                                    ),
                                                    trailing: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: width * 0.01,
                                                    )),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.03,
                                      ),
                                    ],
                                  ),
                                ),
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
