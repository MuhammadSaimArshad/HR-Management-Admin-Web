import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_management_admin/common_widgets/custom_textform.dart';
import 'package:hr_management_admin/responsive/responsive.dart';
import 'package:hr_management_admin/uttils/colors.dart';
import 'package:hr_management_admin/view/dashborad/bar_chart_model.dart';
import 'package:table_calendar/table_calendar.dart';

class Dashborad extends StatefulWidget {
  const Dashborad({super.key});

  @override
  State<Dashborad> createState() => _DashboradState();
}

class _DashboradState extends State<Dashborad> {
  var height, width;

  final searchcontroller = TextEditingController();
  final List<BarChartModel> data = [
    BarChartModel(
      year: "Mon",
      financial: 780,
      color: charts.ColorUtil.fromDartColor(Colors.blueGrey),
    ),
    BarChartModel(
      year: "Tue",
      financial: 500,
      color: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    BarChartModel(
      year: "Wen",
      financial: 600,
      color: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    BarChartModel(
      year: "Thu",
      financial: 800,
      color: charts.ColorUtil.fromDartColor(Colors.yellow),
    ),
    BarChartModel(
      year: "Fri",
      financial: 630,
      color: charts.ColorUtil.fromDartColor(Colors.lightBlueAccent),
    ),
    BarChartModel(
      year: "Sat",
      financial: 950,
      color: charts.ColorUtil.fromDartColor(Colors.pink),
    ),
    BarChartModel(
      year: "Sun",
      financial: 900,
      color: charts.ColorUtil.fromDartColor(Colors.purple),
    ),
  ];
  int selectedindex = 0;
  String item1 = "one";
  String item2 = "one";
  String item3 = "one";
  String item4 = "one";

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    List<charts.Series<BarChartModel, String>> series = [
      charts.Series(
        id: "financial",
        data: data,
        domainFn: (BarChartModel series, _) => series.year,
        measureFn: (BarChartModel series, _) => series.financial,
        colorFn: (BarChartModel series, _) => series.color,
      ),
    ];

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
              child: Flexible(
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
                                    width: width * 0.04,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Hello Robert👋 ",
                                          style: TextStyle(
                                            fontSize: width * 0.015,
                                            fontWeight: FontWeight.w600,
                                          )),
                                      Text(
                                        "Good Moring",
                                        style: TextStyle(
                                            fontSize: width * 0.01,
                                            fontWeight: FontWeight.w300,
                                            color: AppColors.appGrey),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: width * 0.29,
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
                                                  fontWeight: FontWeight.w600,
                                                )),
                                            Text(
                                              "HR MANAGER",
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  fontSize: width * 0.008,
                                                  fontWeight: FontWeight.w300,
                                                  color: AppColors.appGrey),
                                            ),
                                          ],
                                        ),
                                        PopupMenuButton(
                                          icon: const Icon(Icons
                                              .keyboard_arrow_down_outlined),
                                          itemBuilder: (context) => [
                                            PopupMenuItem(
                                                value: item1,
                                                child: InkWell(
                                                    onTap: () {},
                                                    child: Row(
                                                      children: [
                                                        const Icon(
                                                          Icons
                                                              .person_2_outlined,
                                                        ),
                                                        Text("My Profile",
                                                            style: TextStyle(
                                                              fontSize:
                                                                  width * 0.01,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                            )),
                                                      ],
                                                    ))),
                                            PopupMenuItem(
                                                value: item2,
                                                child: Row(
                                                  children: [
                                                    const Icon(
                                                      Icons.logout,
                                                      color: Colors.red,
                                                    ),
                                                    Text("Logout",
                                                        style: TextStyle(
                                                          fontSize:
                                                              width * 0.01,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color: Colors.red,
                                                        )),
                                                  ],
                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: height,
                                width: width * 0.48,
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: height * 0.24,
                                          width: width * 0.2,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  width: width * 0.001,
                                                  color: AppColors.appGrey),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      width * 0.01)),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: height * 0.02,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: width * 0.01,
                                                  ),
                                                  Container(
                                                    height: height * 0.07,
                                                    width: width * 0.03,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            AppColors.appGrey,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    width *
                                                                        0.005)),
                                                    child: const Center(
                                                      child: Icon(
                                                        CupertinoIcons.person_3,
                                                        color:
                                                            AppColors.onPrimary,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: width * 0.01,
                                                  ),
                                                  Text("Total Employee",
                                                      style: TextStyle(
                                                        fontSize: width * 0.01,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      )),
                                                ],
                                              ),
                                              SizedBox(
                                                height: height * 0.02,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: width * 0.01,
                                                  ),
                                                  Text("560",
                                                      style: TextStyle(
                                                        fontSize: width * 0.015,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      )),
                                                  SizedBox(
                                                    width: width * 0.1,
                                                  ),
                                                  Container(
                                                    height: height * 0.045,
                                                    width: width * 0.04,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Colors.green[100],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    width *
                                                                        0.005)),
                                                    child: Row(
                                                      children: [
                                                        const Icon(
                                                          Icons
                                                              .arrow_drop_up_rounded,
                                                          color:
                                                              Color(0xff30BE82),
                                                        ),
                                                        Text("12%",
                                                            style: TextStyle(
                                                              fontSize:
                                                                  width * 0.008,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              color: const Color(
                                                                  0xff30BE82),
                                                            )),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const Divider(
                                                color: AppColors.appGrey,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: width * 0.01,
                                                  ),
                                                  Text(
                                                    "Update: July 16, 2023",
                                                    style: TextStyle(
                                                        fontSize: width * 0.012,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color:
                                                            AppColors.appGrey),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: height * 0.24,
                                          width: width * 0.2,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  width: width * 0.001,
                                                  color: AppColors.appGrey),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      width * 0.01)),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: height * 0.02,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: width * 0.01,
                                                  ),
                                                  Container(
                                                    height: height * 0.07,
                                                    width: width * 0.03,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            AppColors.appGrey,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    width *
                                                                        0.005)),
                                                    child: const Center(
                                                      child: Icon(
                                                        CupertinoIcons
                                                            .briefcase,
                                                        color:
                                                            AppColors.onPrimary,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: width * 0.01,
                                                  ),
                                                  Text("Total Applicant",
                                                      style: TextStyle(
                                                        fontSize: width * 0.01,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      )),
                                                ],
                                              ),
                                              SizedBox(
                                                height: height * 0.02,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: width * 0.01,
                                                  ),
                                                  Text("560",
                                                      style: TextStyle(
                                                        fontSize: width * 0.015,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      )),
                                                  SizedBox(
                                                    width: width * 0.1,
                                                  ),
                                                  Container(
                                                    height: height * 0.045,
                                                    width: width * 0.04,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Colors.green[100],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    width *
                                                                        0.005)),
                                                    child: Row(
                                                      children: [
                                                        const Icon(
                                                          Icons
                                                              .arrow_drop_up_rounded,
                                                          color:
                                                              Color(0xff30BE82),
                                                        ),
                                                        Text("12%",
                                                            style: TextStyle(
                                                              fontSize:
                                                                  width * 0.008,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              color: const Color(
                                                                  0xff30BE82),
                                                            )),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const Divider(
                                                color: AppColors.appGrey,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: width * 0.01,
                                                  ),
                                                  Text(
                                                    "Update: July 16, 2023",
                                                    style: TextStyle(
                                                        fontSize: width * 0.012,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color:
                                                            AppColors.appGrey),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.02,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: height * 0.24,
                                          width: width * 0.2,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  width: width * 0.001,
                                                  color: AppColors.appGrey),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      width * 0.01)),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: height * 0.02,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: width * 0.01,
                                                  ),
                                                  Container(
                                                    height: height * 0.07,
                                                    width: width * 0.03,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            AppColors.appGrey,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    width *
                                                                        0.005)),
                                                    child: const Center(
                                                      child: Icon(
                                                        Icons
                                                            .calendar_month_sharp,
                                                        color:
                                                            AppColors.onPrimary,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: width * 0.01,
                                                  ),
                                                  Text("Today Attendance",
                                                      style: TextStyle(
                                                        fontSize: width * 0.01,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      )),
                                                ],
                                              ),
                                              SizedBox(
                                                height: height * 0.02,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: width * 0.01,
                                                  ),
                                                  Text("470",
                                                      style: TextStyle(
                                                        fontSize: width * 0.015,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      )),
                                                  SizedBox(
                                                    width: width * 0.1,
                                                  ),
                                                  Container(
                                                    height: height * 0.045,
                                                    width: width * 0.04,
                                                    decoration: BoxDecoration(
                                                        color: Colors.red[100],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    width *
                                                                        0.005)),
                                                    child: Row(
                                                      children: [
                                                        const Icon(
                                                          Icons.arrow_drop_down,
                                                          color:
                                                              Color(0xffF45B69),
                                                        ),
                                                        Text("12%",
                                                            style: TextStyle(
                                                              fontSize:
                                                                  width * 0.008,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              color: const Color(
                                                                  0xffF45B69),
                                                            )),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const Divider(
                                                color: AppColors.appGrey,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: width * 0.01,
                                                  ),
                                                  Text(
                                                    "Update: July 16, 2023",
                                                    style: TextStyle(
                                                        fontSize: width * 0.012,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color:
                                                            AppColors.appGrey),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: height * 0.24,
                                          width: width * 0.2,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  width: width * 0.001,
                                                  color: AppColors.appGrey),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      width * 0.01)),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: height * 0.02,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: width * 0.01,
                                                  ),
                                                  Container(
                                                    height: height * 0.07,
                                                    width: width * 0.03,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            AppColors.appGrey,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    width *
                                                                        0.005)),
                                                    child: const Center(
                                                      child: Icon(
                                                        Icons.file_copy_rounded,
                                                        color:
                                                            AppColors.onPrimary,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: width * 0.01,
                                                  ),
                                                  Text("Total Projects",
                                                      style: TextStyle(
                                                        fontSize: width * 0.01,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      )),
                                                ],
                                              ),
                                              SizedBox(
                                                height: height * 0.02,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: width * 0.01,
                                                  ),
                                                  Text("560",
                                                      style: TextStyle(
                                                        fontSize: width * 0.015,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      )),
                                                  SizedBox(
                                                    width: width * 0.1,
                                                  ),
                                                  Container(
                                                    height: height * 0.045,
                                                    width: width * 0.04,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Colors.green[100],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    width *
                                                                        0.005)),
                                                    child: Row(
                                                      children: [
                                                        const Icon(
                                                          Icons
                                                              .arrow_drop_up_rounded,
                                                          color:
                                                              Color(0xff30BE82),
                                                        ),
                                                        Text("12%",
                                                            style: TextStyle(
                                                              fontSize:
                                                                  width * 0.008,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              color: const Color(
                                                                  0xff30BE82),
                                                            )),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const Divider(
                                                color: AppColors.appGrey,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: width * 0.01,
                                                  ),
                                                  Text(
                                                    "Update: July 16, 2023",
                                                    style: TextStyle(
                                                        fontSize: width * 0.012,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color:
                                                            AppColors.appGrey),
                                                  ),
                                                ],
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
                                      height: height * 0.49,
                                      width: width * 0.43,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              width: width * 0.001,
                                              color: AppColors.appGrey),
                                          borderRadius: BorderRadius.circular(
                                              width * 0.01)),
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
                                              Text("Attendance Overview",
                                                  style: TextStyle(
                                                    fontSize: width * 0.015,
                                                    fontWeight: FontWeight.w600,
                                                  )),
                                              SizedBox(
                                                width: width * 0.2,
                                              ),
                                              Container(
                                                height: height * 0.05,
                                                width: width * 0.045,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    border: Border.all(
                                                        width: width * 0.001,
                                                        color:
                                                            AppColors.appGrey),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            width * 0.005)),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text("Today",
                                                        style: TextStyle(
                                                          fontSize:
                                                              width * 0.01,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        )),
                                                    Icon(
                                                      Icons.keyboard_arrow_down,
                                                      size: width * 0.01,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: height * 0.03,
                                          ),
                                          SizedBox(
                                            height: height * 0.37,
                                            width: width * 0.43,
                                            child: charts.BarChart(
                                              series,
                                              animate: true,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: height,
                                width: width * 0.29,
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
                                      height: height * 0.02,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.01,
                                        ),
                                        Text("My Schedule",
                                            style: TextStyle(
                                              fontSize: width * 0.015,
                                              fontWeight: FontWeight.w600,
                                            )),
                                        SizedBox(
                                          width: width * 0.15,
                                        ),
                                        Container(
                                          height: height * 0.07,
                                          width: width * 0.03,
                                          decoration: BoxDecoration(
                                              color: AppColors.appGrey,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      width * 0.005)),
                                          child: const Center(
                                            child: Icon(
                                              Icons.calendar_month_sharp,
                                              color: AppColors.onPrimary,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.02,
                                    ),
                                    TableCalendar(
                                      firstDay: DateTime.utc(2010, 10, 16),
                                      lastDay: DateTime.utc(2030, 3, 14),
                                      focusedDay: DateTime.now(),
                                    ),
                                    SizedBox(
                                      height: height * 0.02,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.01,
                                        ),
                                        Text("Wednesday, 06 July 2023",
                                            style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                            )),
                                        SizedBox(
                                          width: width * 0.12,
                                        ),
                                        Icon(Icons.more_vert_outlined)
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.02,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.01,
                                        ),
                                        Text("09:30",
                                            style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w600,
                                            )),
                                        SizedBox(
                                          height: height * 0.05,
                                          child: const VerticalDivider(
                                            color: AppColors.onPrimary,
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("UI/UX Designer",
                                                style: TextStyle(
                                                  fontSize: width * 0.01,
                                                  fontWeight: FontWeight.w300,
                                                )),
                                            Text("Practical Task Review",
                                                style: TextStyle(
                                                  fontSize: width * 0.01,
                                                  fontWeight: FontWeight.w600,
                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.02,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.01,
                                        ),
                                        Text("09:30",
                                            style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w600,
                                            )),
                                        SizedBox(
                                          height: height * 0.05,
                                          child: const VerticalDivider(
                                            color: AppColors.onPrimary,
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("UI/UX Designer",
                                                style: TextStyle(
                                                  fontSize: width * 0.01,
                                                  fontWeight: FontWeight.w300,
                                                )),
                                            Text("Practical Task Review",
                                                style: TextStyle(
                                                  fontSize: width * 0.01,
                                                  fontWeight: FontWeight.w600,
                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.02,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.01,
                                        ),
                                        Text("09:30",
                                            style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w600,
                                            )),
                                        SizedBox(
                                          height: height * 0.05,
                                          child: const VerticalDivider(
                                            color: AppColors.onPrimary,
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("UI/UX Designer",
                                                style: TextStyle(
                                                  fontSize: width * 0.01,
                                                  fontWeight: FontWeight.w300,
                                                )),
                                            Text("Practical Task Review",
                                                style: TextStyle(
                                                  fontSize: width * 0.01,
                                                  fontWeight: FontWeight.w600,
                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.01,
                                        ),
                                        Text("Wednesday, 06 July 2023",
                                            style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                            )),
                                        SizedBox(
                                          width: width * 0.12,
                                        ),
                                        Icon(Icons.more_vert_outlined)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Container(
                            height: height * 0.5,
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
                                    Text("Attendance Overview",
                                        style: TextStyle(
                                          fontSize: width * 0.015,
                                          fontWeight: FontWeight.w600,
                                        )),
                                    SizedBox(
                                      width: width * 0.52,
                                    ),
                                    Container(
                                      height: height * 0.05,
                                      width: width * 0.05,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              width: width * 0.001,
                                              color: AppColors.appGrey),
                                          borderRadius: BorderRadius.circular(
                                              width * 0.005)),
                                      child: Center(
                                        child: Text("View All",
                                            style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                            )),
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
                                      width: width * 0.12,
                                    ),
                                    Text("Designation",
                                        style: TextStyle(
                                            fontSize: width * 0.01,
                                            fontWeight: FontWeight.w300,
                                            color: AppColors.appGrey)),
                                    SizedBox(
                                      width: width * 0.12,
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
                                      width: width * 0.1,
                                    ),
                                    Text("Status",
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
                                      width: width * 0.11,
                                    ),
                                    Text("Team Lead - Design",
                                        style: TextStyle(
                                            fontSize: width * 0.01,
                                            fontWeight: FontWeight.w300,
                                            color: AppColors.appBlack)),
                                    SizedBox(
                                      width: width * 0.08,
                                    ),
                                    Text("Office",
                                        style: TextStyle(
                                            fontSize: width * 0.01,
                                            fontWeight: FontWeight.w300,
                                            color: AppColors.appBlack)),
                                    SizedBox(
                                      width: width * 0.1,
                                    ),
                                    Text("09:27 AM",
                                        style: TextStyle(
                                            fontSize: width * 0.01,
                                            fontWeight: FontWeight.w300,
                                            color: AppColors.appBlack)),
                                    SizedBox(
                                      width: width * 0.11,
                                    ),
                                    Container(
                                      height: height * 0.05,
                                      width: width * 0.05,
                                      decoration: BoxDecoration(
                                          color: Colors.red[100],
                                          borderRadius: BorderRadius.circular(
                                              width * 0.005)),
                                      child: Center(
                                        child: Text("Late",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.red)),
                                      ),
                                    ),
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
                                      width: width * 0.11,
                                    ),
                                    Text("Team Lead - Design",
                                        style: TextStyle(
                                            fontSize: width * 0.01,
                                            fontWeight: FontWeight.w300,
                                            color: AppColors.appBlack)),
                                    SizedBox(
                                      width: width * 0.08,
                                    ),
                                    Text("Office",
                                        style: TextStyle(
                                            fontSize: width * 0.01,
                                            fontWeight: FontWeight.w300,
                                            color: AppColors.appBlack)),
                                    SizedBox(
                                      width: width * 0.1,
                                    ),
                                    Text("09:27 AM",
                                        style: TextStyle(
                                            fontSize: width * 0.01,
                                            fontWeight: FontWeight.w300,
                                            color: AppColors.appBlack)),
                                    SizedBox(
                                      width: width * 0.11,
                                    ),
                                    Container(
                                      height: height * 0.05,
                                      width: width * 0.05,
                                      decoration: BoxDecoration(
                                          color: Colors.green[100],
                                          borderRadius: BorderRadius.circular(
                                              width * 0.005)),
                                      child: Center(
                                        child: Text("Ontime",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.green)),
                                      ),
                                    ),
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
                                      width: width * 0.11,
                                    ),
                                    Text("Team Lead - Design",
                                        style: TextStyle(
                                            fontSize: width * 0.01,
                                            fontWeight: FontWeight.w300,
                                            color: AppColors.appBlack)),
                                    SizedBox(
                                      width: width * 0.08,
                                    ),
                                    Text("Office",
                                        style: TextStyle(
                                            fontSize: width * 0.01,
                                            fontWeight: FontWeight.w300,
                                            color: AppColors.appBlack)),
                                    SizedBox(
                                      width: width * 0.1,
                                    ),
                                    Text("09:27 AM",
                                        style: TextStyle(
                                            fontSize: width * 0.01,
                                            fontWeight: FontWeight.w300,
                                            color: AppColors.appBlack)),
                                    SizedBox(
                                      width: width * 0.11,
                                    ),
                                    Container(
                                      height: height * 0.05,
                                      width: width * 0.05,
                                      decoration: BoxDecoration(
                                          color: Colors.red[100],
                                          borderRadius: BorderRadius.circular(
                                              width * 0.005)),
                                      child: Center(
                                        child: Text("Late",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.red)),
                                      ),
                                    ),
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
                                      width: width * 0.11,
                                    ),
                                    Text("Team Lead - Design",
                                        style: TextStyle(
                                            fontSize: width * 0.01,
                                            fontWeight: FontWeight.w300,
                                            color: AppColors.appBlack)),
                                    SizedBox(
                                      width: width * 0.08,
                                    ),
                                    Text("Office",
                                        style: TextStyle(
                                            fontSize: width * 0.01,
                                            fontWeight: FontWeight.w300,
                                            color: AppColors.appBlack)),
                                    SizedBox(
                                      width: width * 0.1,
                                    ),
                                    Text("09:27 AM",
                                        style: TextStyle(
                                            fontSize: width * 0.01,
                                            fontWeight: FontWeight.w300,
                                            color: AppColors.appBlack)),
                                    SizedBox(
                                      width: width * 0.11,
                                    ),
                                    Container(
                                      height: height * 0.05,
                                      width: width * 0.05,
                                      decoration: BoxDecoration(
                                          color: Colors.green[100],
                                          borderRadius: BorderRadius.circular(
                                              width * 0.005)),
                                      child: Center(
                                        child: Text("Ontime",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.green)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
          );
  }
}
