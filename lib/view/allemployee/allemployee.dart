import 'package:flutter/material.dart';
import 'package:hr_management_admin/common_widgets/custom_textform.dart';
import 'package:hr_management_admin/responsive/responsive.dart';
import 'package:hr_management_admin/uttils/colors.dart';

import 'package:hr_management_admin/view/allemployee/employeesidebar/employeesidebar.dart';

class AllEmployee extends StatefulWidget {
  const AllEmployee({super.key});

  @override
  State<AllEmployee> createState() => _AllEmployeeState();
}

class _AllEmployeeState extends State<AllEmployee> {
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
                                            focusBorderColor: AppColors.appGrey,
                                            borderRadius: 8,
                                            prefixIcon: Icon(Icons.search),
                                          ),
                                        ),
                                        SizedBox(
                                          width: width * 0.3,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        EmployeeSideBar()));
                                          },
                                          child: Container(
                                            height: height * 0.06,
                                            width: width * 0.13,
                                            decoration: BoxDecoration(
                                                color: AppColors.onPrimary,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        width * 0.005)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Icon(
                                                  Icons.add_circle_outline,
                                                  color: AppColors.appWhite,
                                                ),
                                                // Image.asset("images/filter.png"),
                                                Text("Add New Employee",
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
                                        Container(
                                          height: height * 0.06,
                                          width: width * 0.06,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  width: width * 0.001,
                                                  color: AppColors.appGrey),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      width * 0.005)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.filter_3),
                                              // Image.asset("images/filter.png"),
                                              Text("Filter",
                                                  style: TextStyle(
                                                    fontSize: width * 0.01,
                                                    fontWeight: FontWeight.w300,
                                                  )),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.03,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.03,
                                        ),
                                        Text("Employee Name",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appGrey)),
                                        SizedBox(
                                          width: width * 0.1,
                                        ),
                                        Text("Designation",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appGrey)),
                                        SizedBox(
                                          width: width * 0.1,
                                        ),
                                        Text("Type",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appGrey)),
                                        SizedBox(
                                          width: width * 0.1,
                                        ),
                                        Text("Check in Time",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appGrey)),
                                        SizedBox(
                                          width: width * 0.05,
                                        ),
                                        Text("Status",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appGrey)),
                                        SizedBox(
                                          width: width * 0.05,
                                        ),
                                        Text("Action",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appGrey)),
                                      ],
                                    ),
                                    SizedBox(
                                        width: width * 0.7,
                                        child: const Divider(
                                          color: AppColors.appGrey,
                                        )),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.02,
                                        ),
                                        CircleAvatar(
                                          radius: width * 0.01,
                                          backgroundImage: const AssetImage(
                                              "images/recantgle.png"),
                                        ),
                                        SizedBox(
                                          width: width * 0.01,
                                        ),
                                        Text("Leasie Watson",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.087,
                                        ),
                                        Text("Team Lead - Design",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.066,
                                        ),
                                        Text("Office",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.095,
                                        ),
                                        Text("09:27 AM",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.06,
                                        ),
                                        Container(
                                          height: height * 0.03,
                                          width: width * 0.05,
                                          decoration: BoxDecoration(
                                              color: const Color.fromRGBO(
                                                  203, 195, 233, 1),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      width * 0.003)),
                                          child: Center(
                                            child: Text("Perament",
                                                style: TextStyle(
                                                    fontSize: width * 0.01,
                                                    fontWeight: FontWeight.w300,
                                                    color:
                                                        AppColors.onPrimary)),
                                          ),
                                        ),
                                        SizedBox(
                                          width: width * 0.04,
                                        ),
                                        const Row(
                                          children: [
                                            Icon(Icons.remove_red_eye_outlined),
                                            Icon(Icons.edit),
                                            Icon(Icons.delete_outlined),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                        width: width * 0.7,
                                        child: const Divider(
                                          color: AppColors.appGrey,
                                        )),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.02,
                                        ),
                                        CircleAvatar(
                                          radius: width * 0.01,
                                          backgroundImage: const AssetImage(
                                              "images/recantgle.png"),
                                        ),
                                        SizedBox(
                                          width: width * 0.01,
                                        ),
                                        Text("Leasie Watson",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.087,
                                        ),
                                        Text("Team Lead - Design",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.066,
                                        ),
                                        Text("Office",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.095,
                                        ),
                                        Text("09:27 AM",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.06,
                                        ),
                                        Container(
                                          height: height * 0.03,
                                          width: width * 0.05,
                                          decoration: BoxDecoration(
                                              color: const Color.fromRGBO(
                                                  203, 195, 233, 1),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      width * 0.003)),
                                          child: Center(
                                            child: Text("Perament",
                                                style: TextStyle(
                                                    fontSize: width * 0.01,
                                                    fontWeight: FontWeight.w300,
                                                    color:
                                                        AppColors.onPrimary)),
                                          ),
                                        ),
                                        SizedBox(
                                          width: width * 0.04,
                                        ),
                                        const Row(
                                          children: [
                                            Icon(Icons.remove_red_eye_outlined),
                                            Icon(Icons.edit),
                                            Icon(Icons.delete_outlined),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                        width: width * 0.7,
                                        child: const Divider(
                                          color: AppColors.appGrey,
                                        )),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.02,
                                        ),
                                        CircleAvatar(
                                          radius: width * 0.01,
                                          backgroundImage: const AssetImage(
                                              "images/recantgle.png"),
                                        ),
                                        SizedBox(
                                          width: width * 0.01,
                                        ),
                                        Text("Leasie Watson",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.087,
                                        ),
                                        Text("Team Lead - Design",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.066,
                                        ),
                                        Text("Office",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.095,
                                        ),
                                        Text("09:27 AM",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.06,
                                        ),
                                        Container(
                                          height: height * 0.03,
                                          width: width * 0.05,
                                          decoration: BoxDecoration(
                                              color: const Color.fromRGBO(
                                                  203, 195, 233, 1),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      width * 0.003)),
                                          child: Center(
                                            child: Text("Perament",
                                                style: TextStyle(
                                                    fontSize: width * 0.01,
                                                    fontWeight: FontWeight.w300,
                                                    color:
                                                        AppColors.onPrimary)),
                                          ),
                                        ),
                                        SizedBox(
                                          width: width * 0.04,
                                        ),
                                        const Row(
                                          children: [
                                            Icon(Icons.remove_red_eye_outlined),
                                            Icon(Icons.edit),
                                            Icon(Icons.delete_outlined),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                        width: width * 0.7,
                                        child: const Divider(
                                          color: AppColors.appGrey,
                                        )),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.02,
                                        ),
                                        CircleAvatar(
                                          radius: width * 0.01,
                                          backgroundImage: const AssetImage(
                                              "images/recantgle.png"),
                                        ),
                                        SizedBox(
                                          width: width * 0.01,
                                        ),
                                        Text("Leasie Watson",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.087,
                                        ),
                                        Text("Team Lead - Design",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.066,
                                        ),
                                        Text("Office",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.095,
                                        ),
                                        Text("09:27 AM",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.06,
                                        ),
                                        Container(
                                          height: height * 0.03,
                                          width: width * 0.05,
                                          decoration: BoxDecoration(
                                              color: const Color.fromRGBO(
                                                  203, 195, 233, 1),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      width * 0.003)),
                                          child: Center(
                                            child: Text("Perament",
                                                style: TextStyle(
                                                    fontSize: width * 0.01,
                                                    fontWeight: FontWeight.w300,
                                                    color:
                                                        AppColors.onPrimary)),
                                          ),
                                        ),
                                        SizedBox(
                                          width: width * 0.04,
                                        ),
                                        const Row(
                                          children: [
                                            Icon(Icons.remove_red_eye_outlined),
                                            Icon(Icons.edit),
                                            Icon(Icons.delete_outlined),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                        width: width * 0.7,
                                        child: const Divider(
                                          color: AppColors.appGrey,
                                        )),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.02,
                                        ),
                                        CircleAvatar(
                                          radius: width * 0.01,
                                          backgroundImage: const AssetImage(
                                              "images/recantgle.png"),
                                        ),
                                        SizedBox(
                                          width: width * 0.01,
                                        ),
                                        Text("Leasie Watson",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.087,
                                        ),
                                        Text("Team Lead - Design",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.066,
                                        ),
                                        Text("Office",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.095,
                                        ),
                                        Text("09:27 AM",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.06,
                                        ),
                                        Container(
                                          height: height * 0.03,
                                          width: width * 0.05,
                                          decoration: BoxDecoration(
                                              color: const Color.fromRGBO(
                                                  203, 195, 233, 1),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      width * 0.003)),
                                          child: Center(
                                            child: Text("Perament",
                                                style: TextStyle(
                                                    fontSize: width * 0.01,
                                                    fontWeight: FontWeight.w300,
                                                    color:
                                                        AppColors.onPrimary)),
                                          ),
                                        ),
                                        SizedBox(
                                          width: width * 0.04,
                                        ),
                                        const Row(
                                          children: [
                                            Icon(Icons.remove_red_eye_outlined),
                                            Icon(Icons.edit),
                                            Icon(Icons.delete_outlined),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                        width: width * 0.7,
                                        child: const Divider(
                                          color: AppColors.appGrey,
                                        )),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.02,
                                        ),
                                        CircleAvatar(
                                          radius: width * 0.01,
                                          backgroundImage: const AssetImage(
                                              "images/recantgle.png"),
                                        ),
                                        SizedBox(
                                          width: width * 0.01,
                                        ),
                                        Text("Leasie Watson",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.087,
                                        ),
                                        Text("Team Lead - Design",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.066,
                                        ),
                                        Text("Office",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.095,
                                        ),
                                        Text("09:27 AM",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.06,
                                        ),
                                        Container(
                                          height: height * 0.03,
                                          width: width * 0.05,
                                          decoration: BoxDecoration(
                                              color: const Color.fromRGBO(
                                                  203, 195, 233, 1),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      width * 0.003)),
                                          child: Center(
                                            child: Text("Perament",
                                                style: TextStyle(
                                                    fontSize: width * 0.01,
                                                    fontWeight: FontWeight.w300,
                                                    color:
                                                        AppColors.onPrimary)),
                                          ),
                                        ),
                                        SizedBox(
                                          width: width * 0.04,
                                        ),
                                        const Row(
                                          children: [
                                            Icon(Icons.remove_red_eye_outlined),
                                            Icon(Icons.edit),
                                            Icon(Icons.delete_outlined),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                        width: width * 0.7,
                                        child: const Divider(
                                          color: AppColors.appGrey,
                                        )),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.02,
                                        ),
                                        CircleAvatar(
                                          radius: width * 0.01,
                                          backgroundImage: const AssetImage(
                                              "images/recantgle.png"),
                                        ),
                                        SizedBox(
                                          width: width * 0.01,
                                        ),
                                        Text("Leasie Watson",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.087,
                                        ),
                                        Text("Team Lead - Design",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.066,
                                        ),
                                        Text("Office",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.095,
                                        ),
                                        Text("09:27 AM",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.06,
                                        ),
                                        Container(
                                          height: height * 0.03,
                                          width: width * 0.05,
                                          decoration: BoxDecoration(
                                              color: const Color.fromRGBO(
                                                  203, 195, 233, 1),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      width * 0.003)),
                                          child: Center(
                                            child: Text("Perament",
                                                style: TextStyle(
                                                    fontSize: width * 0.01,
                                                    fontWeight: FontWeight.w300,
                                                    color:
                                                        AppColors.onPrimary)),
                                          ),
                                        ),
                                        SizedBox(
                                          width: width * 0.04,
                                        ),
                                        const Row(
                                          children: [
                                            Icon(Icons.remove_red_eye_outlined),
                                            Icon(Icons.edit),
                                            Icon(Icons.delete_outlined),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                        width: width * 0.7,
                                        child: const Divider(
                                          color: AppColors.appGrey,
                                        )),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.02,
                                        ),
                                        CircleAvatar(
                                          radius: width * 0.01,
                                          backgroundImage: const AssetImage(
                                              "images/recantgle.png"),
                                        ),
                                        SizedBox(
                                          width: width * 0.01,
                                        ),
                                        Text("Leasie Watson",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.087,
                                        ),
                                        Text("Team Lead - Design",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.066,
                                        ),
                                        Text("Office",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.095,
                                        ),
                                        Text("09:27 AM",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.06,
                                        ),
                                        Container(
                                          height: height * 0.03,
                                          width: width * 0.05,
                                          decoration: BoxDecoration(
                                              color: const Color.fromRGBO(
                                                  203, 195, 233, 1),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      width * 0.003)),
                                          child: Center(
                                            child: Text("Perament",
                                                style: TextStyle(
                                                    fontSize: width * 0.01,
                                                    fontWeight: FontWeight.w300,
                                                    color:
                                                        AppColors.onPrimary)),
                                          ),
                                        ),
                                        SizedBox(
                                          width: width * 0.04,
                                        ),
                                        const Row(
                                          children: [
                                            Icon(Icons.remove_red_eye_outlined),
                                            Icon(Icons.edit),
                                            Icon(Icons.delete_outlined),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                        width: width * 0.7,
                                        child: const Divider(
                                          color: AppColors.appGrey,
                                        )),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.02,
                                        ),
                                        CircleAvatar(
                                          radius: width * 0.01,
                                          backgroundImage: const AssetImage(
                                              "images/recantgle.png"),
                                        ),
                                        SizedBox(
                                          width: width * 0.01,
                                        ),
                                        Text("Leasie Watson",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.087,
                                        ),
                                        Text("Team Lead - Design",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.066,
                                        ),
                                        Text("Office",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.095,
                                        ),
                                        Text("09:27 AM",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.06,
                                        ),
                                        Container(
                                          height: height * 0.03,
                                          width: width * 0.05,
                                          decoration: BoxDecoration(
                                              color: const Color.fromRGBO(
                                                  203, 195, 233, 1),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      width * 0.003)),
                                          child: Center(
                                            child: Text("Perament",
                                                style: TextStyle(
                                                    fontSize: width * 0.01,
                                                    fontWeight: FontWeight.w300,
                                                    color:
                                                        AppColors.onPrimary)),
                                          ),
                                        ),
                                        SizedBox(
                                          width: width * 0.04,
                                        ),
                                        const Row(
                                          children: [
                                            Icon(Icons.remove_red_eye_outlined),
                                            Icon(Icons.edit),
                                            Icon(Icons.delete_outlined),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                        width: width * 0.7,
                                        child: const Divider(
                                          color: AppColors.appGrey,
                                        )),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.02,
                                        ),
                                        Text("Showing",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appGrey)),
                                        SizedBox(
                                          width: width * 0.02,
                                        ),
                                        Container(
                                          height: height * 0.06,
                                          width: width * 0.06,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  width: width * 0.001,
                                                  color: AppColors.appGrey),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      width * 0.005)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text("10",
                                                  style: TextStyle(
                                                    fontSize: width * 0.01,
                                                    fontWeight: FontWeight.w300,
                                                  )),
                                              const Icon(Icons
                                                  .keyboard_arrow_down_outlined),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: width * 0.15,
                                        ),
                                        Text(
                                            "Showing 1 to 10 out of 60 records",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appGrey)),
                                        SizedBox(
                                          width: width * 0.18,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(
                                              Icons.arrow_back_ios,
                                              size: width * 0.01,
                                            ),
                                            Container(
                                              height: height * 0.06,
                                              width: width * 0.03,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      width: width * 0.001,
                                                      color:
                                                          AppColors.onPrimary),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          width * 0.005)),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text("1",
                                                      style: TextStyle(
                                                        fontSize: width * 0.01,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      )),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: width * 0.01,
                                            ),
                                            Text("2",
                                                style: TextStyle(
                                                  fontSize: width * 0.01,
                                                  fontWeight: FontWeight.w300,
                                                )),
                                            SizedBox(
                                              width: width * 0.01,
                                            ),
                                            Text("3",
                                                style: TextStyle(
                                                  fontSize: width * 0.01,
                                                  fontWeight: FontWeight.w300,
                                                )),
                                            SizedBox(
                                              width: width * 0.01,
                                            ),
                                            Text("4",
                                                style: TextStyle(
                                                  fontSize: width * 0.01,
                                                  fontWeight: FontWeight.w300,
                                                )),
                                            SizedBox(
                                              width: width * 0.01,
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              size: width * 0.01,
                                            ),
                                          ],
                                        )
                                      ],
                                    )
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
