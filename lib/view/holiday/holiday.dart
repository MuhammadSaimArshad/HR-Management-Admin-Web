import 'package:flutter/material.dart';
import 'package:hr_management_admin/common_widgets/custom_textform.dart';
import 'package:hr_management_admin/responsive/responsive.dart';
import 'package:hr_management_admin/uttils/colors.dart';
import '../../common_widgets/button.dart';

class Holiday extends StatefulWidget {
  const Holiday({super.key});

  @override
  State<Holiday> createState() => _HolidayState();
}

class _HolidayState extends State<Holiday> {
  var height, width;
  bool isChecked = false;
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
                                          Text("All Holiday",
                                              style: TextStyle(
                                                fontSize: width * 0.015,
                                                fontWeight: FontWeight.w600,
                                              )),
                                          Text(
                                            "Showing All Holiday",
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
                                          width: width * 0.37,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            _showMyDialog(
                                                context, width, height);
                                          },
                                          child: Container(
                                            height: height * 0.06,
                                            width: width * 0.1,
                                            decoration: BoxDecoration(
                                                color: AppColors.onPrimary,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        width * 0.005)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                const Icon(
                                                  Icons.add_circle_outline,
                                                  color: AppColors.appWhite,
                                                ),
                                                Text("Add New Holiday",
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
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.03,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.023,
                                        ),
                                        Text("Date",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appGrey)),
                                        SizedBox(
                                          width: width * 0.15,
                                        ),
                                        Text("Day",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appGrey)),
                                        SizedBox(
                                          width: width * 0.15,
                                        ),
                                        Text("Holiday",
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
                                        Container(
                                          height: height * 0.05,
                                          width: width * 0.002,
                                          color: AppColors.appGrey,
                                        ),
                                        SizedBox(
                                          width: width * 0.003,
                                        ),
                                        Text("Jan 01,2024",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.11,
                                        ),
                                        Text("Monday",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.135,
                                        ),
                                        Text("New Year",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
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
                                        Container(
                                          height: height * 0.05,
                                          width: width * 0.002,
                                          color: AppColors.appGrey,
                                        ),
                                        SizedBox(
                                          width: width * 0.003,
                                        ),
                                        Text("Jan 01,2024",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.11,
                                        ),
                                        Text("Monday",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.135,
                                        ),
                                        Text("New Year",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
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
                                        Container(
                                          height: height * 0.05,
                                          width: width * 0.002,
                                          color: AppColors.appGrey,
                                        ),
                                        SizedBox(
                                          width: width * 0.003,
                                        ),
                                        Text("Jan 01,2024",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.11,
                                        ),
                                        Text("Monday",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.135,
                                        ),
                                        Text("New Year",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
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
                                        Container(
                                          height: height * 0.05,
                                          width: width * 0.002,
                                          color: AppColors.appGrey,
                                        ),
                                        SizedBox(
                                          width: width * 0.003,
                                        ),
                                        Text("Jan 01,2024",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.11,
                                        ),
                                        Text("Monday",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.135,
                                        ),
                                        Text("New Year",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
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
                                        Container(
                                          height: height * 0.05,
                                          width: width * 0.002,
                                          color: AppColors.appGrey,
                                        ),
                                        SizedBox(
                                          width: width * 0.003,
                                        ),
                                        Text("Jan 01,2024",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.11,
                                        ),
                                        Text("Monday",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.135,
                                        ),
                                        Text("New Year",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
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
                                        Container(
                                          height: height * 0.05,
                                          width: width * 0.002,
                                          color: AppColors.appGrey,
                                        ),
                                        SizedBox(
                                          width: width * 0.003,
                                        ),
                                        Text("Jan 01,2024",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.11,
                                        ),
                                        Text("Monday",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.135,
                                        ),
                                        Text("New Year",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
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
                                        Container(
                                          height: height * 0.05,
                                          width: width * 0.002,
                                          color: AppColors.appGrey,
                                        ),
                                        SizedBox(
                                          width: width * 0.003,
                                        ),
                                        Text("Jan 01,2024",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.11,
                                        ),
                                        Text("Monday",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.135,
                                        ),
                                        Text("New Year",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
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
                                        Container(
                                          height: height * 0.05,
                                          width: width * 0.002,
                                          color: AppColors.appGrey,
                                        ),
                                        SizedBox(
                                          width: width * 0.003,
                                        ),
                                        Text("Jan 01,2024",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.11,
                                        ),
                                        Text("Monday",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.135,
                                        ),
                                        Text("New Year",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
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
                                        Container(
                                          height: height * 0.05,
                                          width: width * 0.002,
                                          color: AppColors.appGrey,
                                        ),
                                        SizedBox(
                                          width: width * 0.003,
                                        ),
                                        Text("Jan 01,2024",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.11,
                                        ),
                                        Text("Monday",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
                                        SizedBox(
                                          width: width * 0.135,
                                        ),
                                        Text("New Year",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appBlack)),
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
                                          radius: width * 0.004,
                                          backgroundColor: AppColors.onPrimary,
                                        ),
                                        SizedBox(
                                          width: width * 0.003,
                                        ),
                                        Text("Upcoming",
                                            style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w600,
                                              color: AppColors.appBlack,
                                            )),
                                        SizedBox(
                                          width: width * 0.02,
                                        ),
                                        CircleAvatar(
                                          radius: width * 0.004,
                                          backgroundColor: AppColors.appGrey,
                                        ),
                                        SizedBox(
                                          width: width * 0.003,
                                        ),
                                        Text("Past Holiday",
                                            style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w600,
                                              color: AppColors.appBlack,
                                            )),
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

bool isChecked = false;
final deparmentcontroller = TextEditingController();
final enterjobtitlecontroller = TextEditingController();
final selectloactioncontroller = TextEditingController();

Future<void> _showMyDialog(
    BuildContext context, double width, double height) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: height * 0.03),
            Row(
              children: [
                Text(
                  "Add New Holiday",
                  style: TextStyle(
                      fontSize: width * 0.012,
                      fontWeight: FontWeight.w900,
                      color: AppColors.appBlack),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            SizedBox(
              height: height * 0.06,
              width: width * 0.18,
              child: AppTextField(
                hint: "Holiday Name",
                controller: deparmentcontroller,
                borderColor: AppColors.appBlack,
                focusBorderColor: AppColors.appGrey,
                borderRadius: 8,
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            SizedBox(
              height: height * 0.06,
              width: width * 0.18,
              child: AppTextField(
                hint: "Select Day",
                controller: deparmentcontroller,
                borderColor: AppColors.appBlack,
                focusBorderColor: AppColors.appGrey,
                borderRadius: 8,
                suffix: Icon(Icons.date_range),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: height * 0.06,
                  width: width * 0.07,
                  child: AppButton(
                    bgcolor: AppColors.appWhite,
                    textcolor: AppColors.appBlack,
                    borderallcolor: AppColors.appGrey,
                    text: "Cancel",
                    txtsize: width * 0.01,
                    ontap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                SizedBox(
                  width: width * 0.01,
                ),
                SizedBox(
                  height: height * 0.06,
                  width: width * 0.07,
                  child: AppButton(
                    text: "Add",
                    txtsize: width * 0.01,
                    ontap: () {},
                  ),
                )
              ],
            )
          ],
        ),
      );
    },
  );
}
