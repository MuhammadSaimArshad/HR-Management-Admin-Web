import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_management_admin/common_widgets/custom_textform.dart';
import 'package:hr_management_admin/responsive/responsive.dart';
import 'package:hr_management_admin/uttils/colors.dart';
import '../../common_widgets/button.dart';

class Jobs extends StatefulWidget {
  const Jobs({super.key});

  @override
  State<Jobs> createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
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
                                          Text("Jobs",
                                              style: TextStyle(
                                                fontSize: width * 0.015,
                                                fontWeight: FontWeight.w600,
                                              )),
                                          Text(
                                            "Show All Jobs",
                                            style: TextStyle(
                                                fontSize: width * 0.01,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.appGrey),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: width * 0.33,
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
                                            width: width * 0.04,
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
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  const Icon(
                                                    Icons.add_circle_outline,
                                                    color: AppColors.appWhite,
                                                  ),
                                                  Text("Add New Jobs",
                                                      style: TextStyle(
                                                        fontSize: width * 0.01,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color:
                                                            AppColors.appWhite,
                                                      )),
                                                ],
                                              ),
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
                                            height: height * 0.8,
                                            width: width * 0.2,
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
                                                SizedBox(
                                                  height: height * 0.01,
                                                ),
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: width * 0.01,
                                                    ),
                                                    CircleAvatar(
                                                      radius: width * 0.004,
                                                      backgroundColor:
                                                          Colors.orange,
                                                    ),
                                                    SizedBox(
                                                      width: width * 0.003,
                                                    ),
                                                    Text("Active Jobs",
                                                        style: TextStyle(
                                                          fontSize:
                                                              width * 0.01,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: AppColors
                                                              .appBlack,
                                                        )),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: height * 0.01,
                                                ),
                                                Container(
                                                  height: height * 0.23,
                                                  width: width * 0.18,
                                                  decoration: BoxDecoration(
                                                      color: AppColors.appGrey,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              width * 0.005),
                                                      border: Border.all(
                                                        width: width * 0.001,
                                                        color:
                                                            AppColors.appGrey,
                                                      )),
                                                  child: Column(
                                                    children: [
                                                      ListTile(
                                                        leading: const Icon(
                                                          CupertinoIcons
                                                              .briefcase,
                                                        ),
                                                        title: Text(
                                                            "UI UX Designer",
                                                            style: TextStyle(
                                                              fontSize:
                                                                  width * 0.01,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: AppColors
                                                                  .appBlack,
                                                            )),
                                                        subtitle: Text("Design",
                                                            style: TextStyle(
                                                              fontSize:
                                                                  width * 0.01,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              color: AppColors
                                                                  .appWhite,
                                                            )),
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          InkWell(
                                                            onTap: () {},
                                                            child: Container(
                                                              height:
                                                                  height * 0.05,
                                                              width:
                                                                  width * 0.05,
                                                              decoration: BoxDecoration(
                                                                  color: AppColors
                                                                      .onPrimary,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          width *
                                                                              0.005)),

                                                              // Image.asset("images/filter.png"),
                                                              child: Center(
                                                                child: Text(
                                                                    "Design",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          width *
                                                                              0.01,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      color: AppColors
                                                                          .appWhite,
                                                                    )),
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {},
                                                            child: Container(
                                                              height:
                                                                  height * 0.05,
                                                              width:
                                                                  width * 0.05,
                                                              decoration: BoxDecoration(
                                                                  color: AppColors
                                                                      .onPrimary,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          width *
                                                                              0.005)),
                                                              child: Center(
                                                                child: Text(
                                                                    "Full Time",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          width *
                                                                              0.01,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      color: AppColors
                                                                          .appWhite,
                                                                    )),
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {},
                                                            child: Container(
                                                              height:
                                                                  height * 0.05,
                                                              width:
                                                                  width * 0.05,
                                                              decoration: BoxDecoration(
                                                                  color: AppColors
                                                                      .onPrimary,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          width *
                                                                              0.005)),
                                                              child: Center(
                                                                child: Text(
                                                                    "Remote",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          width *
                                                                              0.01,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      color: AppColors
                                                                          .appWhite,
                                                                    )),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: height * 0.01,
                                                      ),
                                                      Row(
                                                        children: [
                                                          const Icon(Icons
                                                              .location_on_outlined),
                                                          Text("California,Usa",
                                                              style: TextStyle(
                                                                fontSize:
                                                                    width *
                                                                        0.01,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                color: AppColors
                                                                    .appWhite,
                                                              )),
                                                          SizedBox(
                                                            width: width * 0.03,
                                                          ),
                                                          Text("5000/Month",
                                                              style: TextStyle(
                                                                fontSize:
                                                                    width *
                                                                        0.01,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                color: AppColors
                                                                    .appBlack,
                                                              )),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: height * 0.01,
                                                ),
                                                Container(
                                                  height: height * 0.23,
                                                  width: width * 0.18,
                                                  decoration: BoxDecoration(
                                                      color: AppColors.appGrey,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              width * 0.005),
                                                      border: Border.all(
                                                        width: width * 0.001,
                                                        color:
                                                            AppColors.appGrey,
                                                      )),
                                                  child: Column(
                                                    children: [
                                                      ListTile(
                                                        leading: const Icon(
                                                          CupertinoIcons
                                                              .briefcase,
                                                        ),
                                                        title: Text(
                                                            "UI UX Designer",
                                                            style: TextStyle(
                                                              fontSize:
                                                                  width * 0.01,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: AppColors
                                                                  .appBlack,
                                                            )),
                                                        subtitle: Text("Design",
                                                            style: TextStyle(
                                                              fontSize:
                                                                  width * 0.01,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              color: AppColors
                                                                  .appWhite,
                                                            )),
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          InkWell(
                                                            onTap: () {},
                                                            child: Container(
                                                              height:
                                                                  height * 0.05,
                                                              width:
                                                                  width * 0.05,
                                                              decoration: BoxDecoration(
                                                                  color: AppColors
                                                                      .onPrimary,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          width *
                                                                              0.005)),
                                                              child: Center(
                                                                child: Text(
                                                                    "Design",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          width *
                                                                              0.01,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      color: AppColors
                                                                          .appWhite,
                                                                    )),
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {},
                                                            child: Container(
                                                              height:
                                                                  height * 0.05,
                                                              width:
                                                                  width * 0.05,
                                                              decoration: BoxDecoration(
                                                                  color: AppColors
                                                                      .onPrimary,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          width *
                                                                              0.005)),
                                                              child: Center(
                                                                child: Text(
                                                                    "Full Time",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          width *
                                                                              0.01,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      color: AppColors
                                                                          .appWhite,
                                                                    )),
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {},
                                                            child: Container(
                                                              height:
                                                                  height * 0.05,
                                                              width:
                                                                  width * 0.05,
                                                              decoration: BoxDecoration(
                                                                  color: AppColors
                                                                      .onPrimary,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          width *
                                                                              0.005)),
                                                              child: Center(
                                                                child: Text(
                                                                    "Remote",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          width *
                                                                              0.01,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      color: AppColors
                                                                          .appWhite,
                                                                    )),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: height * 0.01,
                                                      ),
                                                      Row(
                                                        children: [
                                                          const Icon(Icons
                                                              .location_on_outlined),
                                                          Text("California,Usa",
                                                              style: TextStyle(
                                                                fontSize:
                                                                    width *
                                                                        0.01,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                color: AppColors
                                                                    .appWhite,
                                                              )),
                                                          SizedBox(
                                                            width: width * 0.03,
                                                          ),
                                                          Text("5000/Month",
                                                              style: TextStyle(
                                                                fontSize:
                                                                    width *
                                                                        0.01,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                color: AppColors
                                                                    .appBlack,
                                                              )),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: height * 0.01,
                                                ),
                                                Container(
                                                  height: height * 0.23,
                                                  width: width * 0.18,
                                                  decoration: BoxDecoration(
                                                      color: AppColors.appGrey,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              width * 0.005),
                                                      border: Border.all(
                                                        width: width * 0.001,
                                                        color:
                                                            AppColors.appGrey,
                                                      )),
                                                  child: Column(
                                                    children: [
                                                      ListTile(
                                                        leading: const Icon(
                                                          CupertinoIcons
                                                              .briefcase,
                                                        ),
                                                        title: Text(
                                                            "UI UX Designer",
                                                            style: TextStyle(
                                                              fontSize:
                                                                  width * 0.01,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: AppColors
                                                                  .appBlack,
                                                            )),
                                                        subtitle: Text("Design",
                                                            style: TextStyle(
                                                              fontSize:
                                                                  width * 0.01,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              color: AppColors
                                                                  .appWhite,
                                                            )),
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          InkWell(
                                                            onTap: () {},
                                                            child: Container(
                                                              height:
                                                                  height * 0.05,
                                                              width:
                                                                  width * 0.05,
                                                              decoration: BoxDecoration(
                                                                  color: AppColors
                                                                      .onPrimary,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          width *
                                                                              0.005)),
                                                              child: Center(
                                                                child: Text(
                                                                    "Design",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          width *
                                                                              0.01,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      color: AppColors
                                                                          .appWhite,
                                                                    )),
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {},
                                                            child: Container(
                                                              height:
                                                                  height * 0.05,
                                                              width:
                                                                  width * 0.05,
                                                              decoration: BoxDecoration(
                                                                  color: AppColors
                                                                      .onPrimary,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          width *
                                                                              0.005)),
                                                              child: Center(
                                                                child: Text(
                                                                    "Full Time",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          width *
                                                                              0.01,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      color: AppColors
                                                                          .appWhite,
                                                                    )),
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {},
                                                            child: Container(
                                                              height:
                                                                  height * 0.05,
                                                              width:
                                                                  width * 0.05,
                                                              decoration: BoxDecoration(
                                                                  color: AppColors
                                                                      .onPrimary,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          width *
                                                                              0.005)),
                                                              child: Center(
                                                                child: Text(
                                                                    "Remote",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          width *
                                                                              0.01,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      color: AppColors
                                                                          .appWhite,
                                                                    )),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: height * 0.01,
                                                      ),
                                                      Row(
                                                        children: [
                                                          const Icon(Icons
                                                              .location_on_outlined),
                                                          Text("California,Usa",
                                                              style: TextStyle(
                                                                fontSize:
                                                                    width *
                                                                        0.01,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                color: AppColors
                                                                    .appWhite,
                                                              )),
                                                          SizedBox(
                                                            width: width * 0.03,
                                                          ),
                                                          Text("5000/Month",
                                                              style: TextStyle(
                                                                fontSize:
                                                                    width *
                                                                        0.01,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                color: AppColors
                                                                    .appBlack,
                                                              )),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: height * 0.8,
                                            width: width * 0.2,
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
                                                SizedBox(
                                                  height: height * 0.01,
                                                ),
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: width * 0.01,
                                                    ),
                                                    CircleAvatar(
                                                      radius: width * 0.004,
                                                      backgroundColor:
                                                          Colors.red,
                                                    ),
                                                    SizedBox(
                                                      width: width * 0.003,
                                                    ),
                                                    Text("Inactive Jobs",
                                                        style: TextStyle(
                                                          fontSize:
                                                              width * 0.01,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: AppColors
                                                              .appBlack,
                                                        )),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: height * 0.01,
                                                ),
                                                Container(
                                                  height: height * 0.23,
                                                  width: width * 0.18,
                                                  decoration: BoxDecoration(
                                                      color: AppColors.appGrey,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              width * 0.005),
                                                      border: Border.all(
                                                        width: width * 0.001,
                                                        color:
                                                            AppColors.appGrey,
                                                      )),
                                                  child: Column(
                                                    children: [
                                                      ListTile(
                                                        leading: const Icon(
                                                          CupertinoIcons
                                                              .briefcase,
                                                        ),
                                                        title: Text(
                                                            "UI UX Designer",
                                                            style: TextStyle(
                                                              fontSize:
                                                                  width * 0.01,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: AppColors
                                                                  .appBlack,
                                                            )),
                                                        subtitle: Text("Design",
                                                            style: TextStyle(
                                                              fontSize:
                                                                  width * 0.01,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              color: AppColors
                                                                  .appWhite,
                                                            )),
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          InkWell(
                                                            onTap: () {},
                                                            child: Container(
                                                              height:
                                                                  height * 0.05,
                                                              width:
                                                                  width * 0.05,
                                                              decoration: BoxDecoration(
                                                                  color: AppColors
                                                                      .onPrimary,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          width *
                                                                              0.005)),

                                                              // Image.asset("images/filter.png"),
                                                              child: Center(
                                                                child: Text(
                                                                    "Design",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          width *
                                                                              0.01,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      color: AppColors
                                                                          .appWhite,
                                                                    )),
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {},
                                                            child: Container(
                                                              height:
                                                                  height * 0.05,
                                                              width:
                                                                  width * 0.05,
                                                              decoration: BoxDecoration(
                                                                  color: AppColors
                                                                      .onPrimary,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          width *
                                                                              0.005)),
                                                              child: Center(
                                                                child: Text(
                                                                    "Full Time",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          width *
                                                                              0.01,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      color: AppColors
                                                                          .appWhite,
                                                                    )),
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {},
                                                            child: Container(
                                                              height:
                                                                  height * 0.05,
                                                              width:
                                                                  width * 0.05,
                                                              decoration: BoxDecoration(
                                                                  color: AppColors
                                                                      .onPrimary,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          width *
                                                                              0.005)),
                                                              child: Center(
                                                                child: Text(
                                                                    "Remote",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          width *
                                                                              0.01,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      color: AppColors
                                                                          .appWhite,
                                                                    )),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: height * 0.01,
                                                      ),
                                                      Row(
                                                        children: [
                                                          const Icon(Icons
                                                              .location_on_outlined),
                                                          Text("California,Usa",
                                                              style: TextStyle(
                                                                fontSize:
                                                                    width *
                                                                        0.01,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                color: AppColors
                                                                    .appWhite,
                                                              )),
                                                          SizedBox(
                                                            width: width * 0.03,
                                                          ),
                                                          Text("5000/Month",
                                                              style: TextStyle(
                                                                fontSize:
                                                                    width *
                                                                        0.01,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                color: AppColors
                                                                    .appBlack,
                                                              )),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: height * 0.01,
                                                ),
                                                Container(
                                                  height: height * 0.23,
                                                  width: width * 0.18,
                                                  decoration: BoxDecoration(
                                                      color: AppColors.appGrey,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              width * 0.005),
                                                      border: Border.all(
                                                        width: width * 0.001,
                                                        color:
                                                            AppColors.appGrey,
                                                      )),
                                                  child: Column(
                                                    children: [
                                                      ListTile(
                                                        leading: const Icon(
                                                          CupertinoIcons
                                                              .briefcase,
                                                        ),
                                                        title: Text(
                                                            "UI UX Designer",
                                                            style: TextStyle(
                                                              fontSize:
                                                                  width * 0.01,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: AppColors
                                                                  .appBlack,
                                                            )),
                                                        subtitle: Text("Design",
                                                            style: TextStyle(
                                                              fontSize:
                                                                  width * 0.01,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              color: AppColors
                                                                  .appWhite,
                                                            )),
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          InkWell(
                                                            onTap: () {},
                                                            child: Container(
                                                              height:
                                                                  height * 0.05,
                                                              width:
                                                                  width * 0.05,
                                                              decoration: BoxDecoration(
                                                                  color: AppColors
                                                                      .onPrimary,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          width *
                                                                              0.005)),
                                                              child: Center(
                                                                child: Text(
                                                                    "Design",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          width *
                                                                              0.01,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      color: AppColors
                                                                          .appWhite,
                                                                    )),
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {},
                                                            child: Container(
                                                              height:
                                                                  height * 0.05,
                                                              width:
                                                                  width * 0.05,
                                                              decoration: BoxDecoration(
                                                                  color: AppColors
                                                                      .onPrimary,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          width *
                                                                              0.005)),
                                                              child: Center(
                                                                child: Text(
                                                                    "Full Time",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          width *
                                                                              0.01,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      color: AppColors
                                                                          .appWhite,
                                                                    )),
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {},
                                                            child: Container(
                                                              height:
                                                                  height * 0.05,
                                                              width:
                                                                  width * 0.05,
                                                              decoration: BoxDecoration(
                                                                  color: AppColors
                                                                      .onPrimary,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          width *
                                                                              0.005)),
                                                              child: Center(
                                                                child: Text(
                                                                    "Remote",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          width *
                                                                              0.01,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      color: AppColors
                                                                          .appWhite,
                                                                    )),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: height * 0.01,
                                                      ),
                                                      Row(
                                                        children: [
                                                          const Icon(Icons
                                                              .location_on_outlined),
                                                          Text("California,Usa",
                                                              style: TextStyle(
                                                                fontSize:
                                                                    width *
                                                                        0.01,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                color: AppColors
                                                                    .appWhite,
                                                              )),
                                                          SizedBox(
                                                            width: width * 0.03,
                                                          ),
                                                          Text("5000/Month",
                                                              style: TextStyle(
                                                                fontSize:
                                                                    width *
                                                                        0.01,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                color: AppColors
                                                                    .appBlack,
                                                              )),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: height * 0.01,
                                                ),
                                                Container(
                                                  height: height * 0.23,
                                                  width: width * 0.18,
                                                  decoration: BoxDecoration(
                                                      color: AppColors.appGrey,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              width * 0.005),
                                                      border: Border.all(
                                                        width: width * 0.001,
                                                        color:
                                                            AppColors.appGrey,
                                                      )),
                                                  child: Column(
                                                    children: [
                                                      ListTile(
                                                        leading: const Icon(
                                                          CupertinoIcons
                                                              .briefcase,
                                                        ),
                                                        title: Text(
                                                            "UI UX Designer",
                                                            style: TextStyle(
                                                              fontSize:
                                                                  width * 0.01,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: AppColors
                                                                  .appBlack,
                                                            )),
                                                        subtitle: Text("Design",
                                                            style: TextStyle(
                                                              fontSize:
                                                                  width * 0.01,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              color: AppColors
                                                                  .appWhite,
                                                            )),
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          InkWell(
                                                            onTap: () {},
                                                            child: Container(
                                                              height:
                                                                  height * 0.05,
                                                              width:
                                                                  width * 0.05,
                                                              decoration: BoxDecoration(
                                                                  color: AppColors
                                                                      .onPrimary,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          width *
                                                                              0.005)),
                                                              child: Center(
                                                                child: Text(
                                                                    "Design",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          width *
                                                                              0.01,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      color: AppColors
                                                                          .appWhite,
                                                                    )),
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {},
                                                            child: Container(
                                                              height:
                                                                  height * 0.05,
                                                              width:
                                                                  width * 0.05,
                                                              decoration: BoxDecoration(
                                                                  color: AppColors
                                                                      .onPrimary,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          width *
                                                                              0.005)),
                                                              child: Center(
                                                                child: Text(
                                                                    "Full Time",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          width *
                                                                              0.01,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      color: AppColors
                                                                          .appWhite,
                                                                    )),
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {},
                                                            child: Container(
                                                              height:
                                                                  height * 0.05,
                                                              width:
                                                                  width * 0.05,
                                                              decoration: BoxDecoration(
                                                                  color: AppColors
                                                                      .onPrimary,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          width *
                                                                              0.005)),
                                                              child: Center(
                                                                child: Text(
                                                                    "Remote",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          width *
                                                                              0.01,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      color: AppColors
                                                                          .appWhite,
                                                                    )),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: height * 0.01,
                                                      ),
                                                      Row(
                                                        children: [
                                                          const Icon(Icons
                                                              .location_on_outlined),
                                                          Text("California,Usa",
                                                              style: TextStyle(
                                                                fontSize:
                                                                    width *
                                                                        0.01,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                color: AppColors
                                                                    .appWhite,
                                                              )),
                                                          SizedBox(
                                                            width: width * 0.03,
                                                          ),
                                                          Text("5000/Month",
                                                              style: TextStyle(
                                                                fontSize:
                                                                    width *
                                                                        0.01,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                color: AppColors
                                                                    .appBlack,
                                                              )),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: height * 0.8,
                                            width: width * 0.2,
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
                                                SizedBox(
                                                  height: height * 0.01,
                                                ),
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: width * 0.01,
                                                    ),
                                                    CircleAvatar(
                                                      radius: width * 0.004,
                                                      backgroundColor:
                                                          Colors.green,
                                                    ),
                                                    SizedBox(
                                                      width: width * 0.003,
                                                    ),
                                                    Text("Complete Jobs",
                                                        style: TextStyle(
                                                          fontSize:
                                                              width * 0.01,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: AppColors
                                                              .appBlack,
                                                        )),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: height * 0.01,
                                                ),
                                                Container(
                                                  height: height * 0.23,
                                                  width: width * 0.18,
                                                  decoration: BoxDecoration(
                                                      color: AppColors.appGrey,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              width * 0.005),
                                                      border: Border.all(
                                                        width: width * 0.001,
                                                        color:
                                                            AppColors.appGrey,
                                                      )),
                                                  child: Column(
                                                    children: [
                                                      ListTile(
                                                        leading: const Icon(
                                                          CupertinoIcons
                                                              .briefcase,
                                                        ),
                                                        title: Text(
                                                            "UI UX Designer",
                                                            style: TextStyle(
                                                              fontSize:
                                                                  width * 0.01,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: AppColors
                                                                  .appBlack,
                                                            )),
                                                        subtitle: Text("Design",
                                                            style: TextStyle(
                                                              fontSize:
                                                                  width * 0.01,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              color: AppColors
                                                                  .appWhite,
                                                            )),
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          InkWell(
                                                            onTap: () {},
                                                            child: Container(
                                                              height:
                                                                  height * 0.05,
                                                              width:
                                                                  width * 0.05,
                                                              decoration: BoxDecoration(
                                                                  color: AppColors
                                                                      .onPrimary,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          width *
                                                                              0.005)),

                                                              // Image.asset("images/filter.png"),
                                                              child: Center(
                                                                child: Text(
                                                                    "Design",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          width *
                                                                              0.01,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      color: AppColors
                                                                          .appWhite,
                                                                    )),
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {},
                                                            child: Container(
                                                              height:
                                                                  height * 0.05,
                                                              width:
                                                                  width * 0.05,
                                                              decoration: BoxDecoration(
                                                                  color: AppColors
                                                                      .onPrimary,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          width *
                                                                              0.005)),
                                                              child: Center(
                                                                child: Text(
                                                                    "Full Time",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          width *
                                                                              0.01,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      color: AppColors
                                                                          .appWhite,
                                                                    )),
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {},
                                                            child: Container(
                                                              height:
                                                                  height * 0.05,
                                                              width:
                                                                  width * 0.05,
                                                              decoration: BoxDecoration(
                                                                  color: AppColors
                                                                      .onPrimary,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          width *
                                                                              0.005)),
                                                              child: Center(
                                                                child: Text(
                                                                    "Remote",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          width *
                                                                              0.01,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      color: AppColors
                                                                          .appWhite,
                                                                    )),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: height * 0.01,
                                                      ),
                                                      Row(
                                                        children: [
                                                          const Icon(Icons
                                                              .location_on_outlined),
                                                          Text("California,Usa",
                                                              style: TextStyle(
                                                                fontSize:
                                                                    width *
                                                                        0.01,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                color: AppColors
                                                                    .appWhite,
                                                              )),
                                                          SizedBox(
                                                            width: width * 0.03,
                                                          ),
                                                          Text("5000/Month",
                                                              style: TextStyle(
                                                                fontSize:
                                                                    width *
                                                                        0.01,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                color: AppColors
                                                                    .appBlack,
                                                              )),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: height * 0.01,
                                                ),
                                                Container(
                                                  height: height * 0.23,
                                                  width: width * 0.18,
                                                  decoration: BoxDecoration(
                                                      color: AppColors.appGrey,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              width * 0.005),
                                                      border: Border.all(
                                                        width: width * 0.001,
                                                        color:
                                                            AppColors.appGrey,
                                                      )),
                                                  child: Column(
                                                    children: [
                                                      ListTile(
                                                        leading: const Icon(
                                                          CupertinoIcons
                                                              .briefcase,
                                                        ),
                                                        title: Text(
                                                            "UI UX Designer",
                                                            style: TextStyle(
                                                              fontSize:
                                                                  width * 0.01,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: AppColors
                                                                  .appBlack,
                                                            )),
                                                        subtitle: Text("Design",
                                                            style: TextStyle(
                                                              fontSize:
                                                                  width * 0.01,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              color: AppColors
                                                                  .appWhite,
                                                            )),
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          InkWell(
                                                            onTap: () {},
                                                            child: Container(
                                                              height:
                                                                  height * 0.05,
                                                              width:
                                                                  width * 0.05,
                                                              decoration: BoxDecoration(
                                                                  color: AppColors
                                                                      .onPrimary,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          width *
                                                                              0.005)),
                                                              child: Center(
                                                                child: Text(
                                                                    "Design",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          width *
                                                                              0.01,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      color: AppColors
                                                                          .appWhite,
                                                                    )),
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {},
                                                            child: Container(
                                                              height:
                                                                  height * 0.05,
                                                              width:
                                                                  width * 0.05,
                                                              decoration: BoxDecoration(
                                                                  color: AppColors
                                                                      .onPrimary,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          width *
                                                                              0.005)),
                                                              child: Center(
                                                                child: Text(
                                                                    "Full Time",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          width *
                                                                              0.01,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      color: AppColors
                                                                          .appWhite,
                                                                    )),
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {},
                                                            child: Container(
                                                              height:
                                                                  height * 0.05,
                                                              width:
                                                                  width * 0.05,
                                                              decoration: BoxDecoration(
                                                                  color: AppColors
                                                                      .onPrimary,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          width *
                                                                              0.005)),
                                                              child: Center(
                                                                child: Text(
                                                                    "Remote",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          width *
                                                                              0.01,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      color: AppColors
                                                                          .appWhite,
                                                                    )),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: height * 0.01,
                                                      ),
                                                      Row(
                                                        children: [
                                                          const Icon(Icons
                                                              .location_on_outlined),
                                                          Text("California,Usa",
                                                              style: TextStyle(
                                                                fontSize:
                                                                    width *
                                                                        0.01,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                color: AppColors
                                                                    .appWhite,
                                                              )),
                                                          SizedBox(
                                                            width: width * 0.03,
                                                          ),
                                                          Text("5000/Month",
                                                              style: TextStyle(
                                                                fontSize:
                                                                    width *
                                                                        0.01,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                color: AppColors
                                                                    .appBlack,
                                                              )),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: height * 0.01,
                                                ),
                                                Container(
                                                  height: height * 0.23,
                                                  width: width * 0.18,
                                                  decoration: BoxDecoration(
                                                      color: AppColors.appGrey,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              width * 0.005),
                                                      border: Border.all(
                                                        width: width * 0.001,
                                                        color:
                                                            AppColors.appGrey,
                                                      )),
                                                  child: Column(
                                                    children: [
                                                      ListTile(
                                                        leading: const Icon(
                                                          CupertinoIcons
                                                              .briefcase,
                                                        ),
                                                        title: Text(
                                                            "UI UX Designer",
                                                            style: TextStyle(
                                                              fontSize:
                                                                  width * 0.01,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: AppColors
                                                                  .appBlack,
                                                            )),
                                                        subtitle: Text("Design",
                                                            style: TextStyle(
                                                              fontSize:
                                                                  width * 0.01,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              color: AppColors
                                                                  .appWhite,
                                                            )),
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          InkWell(
                                                            onTap: () {},
                                                            child: Container(
                                                              height:
                                                                  height * 0.05,
                                                              width:
                                                                  width * 0.05,
                                                              decoration: BoxDecoration(
                                                                  color: AppColors
                                                                      .onPrimary,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          width *
                                                                              0.005)),
                                                              child: Center(
                                                                child: Text(
                                                                    "Design",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          width *
                                                                              0.01,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      color: AppColors
                                                                          .appWhite,
                                                                    )),
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {},
                                                            child: Container(
                                                              height:
                                                                  height * 0.05,
                                                              width:
                                                                  width * 0.05,
                                                              decoration: BoxDecoration(
                                                                  color: AppColors
                                                                      .onPrimary,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          width *
                                                                              0.005)),
                                                              child: Center(
                                                                child: Text(
                                                                    "Full Time",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          width *
                                                                              0.01,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      color: AppColors
                                                                          .appWhite,
                                                                    )),
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {},
                                                            child: Container(
                                                              height:
                                                                  height * 0.05,
                                                              width:
                                                                  width * 0.05,
                                                              decoration: BoxDecoration(
                                                                  color: AppColors
                                                                      .onPrimary,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          width *
                                                                              0.005)),
                                                              child: Center(
                                                                child: Text(
                                                                    "Remote",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          width *
                                                                              0.01,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      color: AppColors
                                                                          .appWhite,
                                                                    )),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: height * 0.01,
                                                      ),
                                                      Row(
                                                        children: [
                                                          const Icon(Icons
                                                              .location_on_outlined),
                                                          Text("California,Usa",
                                                              style: TextStyle(
                                                                fontSize:
                                                                    width *
                                                                        0.01,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                color: AppColors
                                                                    .appWhite,
                                                              )),
                                                          SizedBox(
                                                            width: width * 0.03,
                                                          ),
                                                          Text("5000/Month",
                                                              style: TextStyle(
                                                                fontSize:
                                                                    width *
                                                                        0.01,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                color: AppColors
                                                                    .appBlack,
                                                              )),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
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
                  "Add New Job",
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
                hint: "Select Deparment",
                controller: deparmentcontroller,
                borderColor: AppColors.appBlack,
                focusBorderColor: AppColors.appGrey,
                borderRadius: 8,
                suffix: Icon(Icons.keyboard_arrow_down_rounded),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            SizedBox(
              height: height * 0.06,
              width: width * 0.18,
              child: AppTextField(
                hint: "Enter Job Title",
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
                hint: "Select Location",
                controller: deparmentcontroller,
                borderColor: AppColors.appBlack,
                focusBorderColor: AppColors.appGrey,
                borderRadius: 8,
                suffix: Icon(Icons.keyboard_arrow_down_rounded),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            SizedBox(
              height: height * 0.06,
              width: width * 0.18,
              child: AppTextField(
                hint: "Enter Amount",
                controller: deparmentcontroller,
                borderColor: AppColors.appBlack,
                focusBorderColor: AppColors.appGrey,
                borderRadius: 8,
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                Text(
                  "Select Type",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w900,
                      color: AppColors.appBlack),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: width * 0.001,
                ),
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    // setState(() {
                    //   isChecked = value!;
                    // }
                    // );
                  },
                ),
                Text(
                  "Office",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    // setState(() {
                    //   isChecked = value!;
                    // }
                    // );
                  },
                ),
                Text(
                  "Work From Home",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
              ],
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
                    text: "Next",
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
