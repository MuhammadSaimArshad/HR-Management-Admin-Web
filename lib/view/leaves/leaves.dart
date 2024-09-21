import 'package:flutter/material.dart';
import 'package:hr_management_admin/common_widgets/custom_textform.dart';
import 'package:hr_management_admin/responsive/responsive.dart';
import 'package:hr_management_admin/uttils/colors.dart';

class Leaves extends StatefulWidget {
  const Leaves({super.key});

  @override
  State<Leaves> createState() => _LeavesState();
}

class _LeavesState extends State<Leaves> {
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
                                          Text("All Leaves",
                                              style: TextStyle(
                                                fontSize: width * 0.015,
                                                fontWeight: FontWeight.w600,
                                              )),
                                          Text(
                                            "Showing All Leaves",
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
                                        Text(
                                          "Date",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appGrey),
                                        ),
                                        SizedBox(
                                          width: width * 0.14,
                                        ),
                                        Text(
                                          "Duration",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appGrey),
                                        ),
                                        SizedBox(
                                          width: width * 0.11,
                                        ),
                                        Text(
                                          "Days",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appGrey),
                                        ),
                                        SizedBox(
                                          width: width * 0.11,
                                        ),
                                        Text(
                                          "Reporating Manager",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appGrey),
                                        ),
                                        SizedBox(
                                          width: width * 0.11,
                                        ),
                                        Text(
                                          "Status",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appGrey),
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
                                          width: width * 0.03,
                                        ),
                                        Text(
                                          "July 1 ,2023",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.1,
                                        ),
                                        Text(
                                          "July05 - July08",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.085,
                                        ),
                                        Text(
                                          "3 Days",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.11,
                                        ),
                                        Text(
                                          "Mark Willians",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.12,
                                        ),
                                        Container(
                                          height: height * 0.04,
                                          width: width * 0.06,
                                          decoration: BoxDecoration(
                                              color: Colors.green[100],
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      width * 0.005)),
                                          child: Center(
                                            child: Text("Aproved",
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
                                          width: width * 0.03,
                                        ),
                                        Text(
                                          "July 1 ,2023",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.1,
                                        ),
                                        Text(
                                          "July05 - July08",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.085,
                                        ),
                                        Text(
                                          "3 Days",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.11,
                                        ),
                                        Text(
                                          "Mark Willians",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.12,
                                        ),
                                        Container(
                                          height: height * 0.04,
                                          width: width * 0.06,
                                          decoration: BoxDecoration(
                                              color: Colors.green[100],
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      width * 0.005)),
                                          child: Center(
                                            child: Text("Aproved",
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
                                          width: width * 0.03,
                                        ),
                                        Text(
                                          "July 1 ,2023",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.1,
                                        ),
                                        Text(
                                          "July05 - July08",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.085,
                                        ),
                                        Text(
                                          "3 Days",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.11,
                                        ),
                                        Text(
                                          "Mark Willians",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.12,
                                        ),
                                        Container(
                                          height: height * 0.04,
                                          width: width * 0.06,
                                          decoration: BoxDecoration(
                                              color: Colors.green[100],
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      width * 0.005)),
                                          child: Center(
                                            child: Text("Aproved",
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
                                          width: width * 0.03,
                                        ),
                                        Text(
                                          "July 1 ,2023",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.1,
                                        ),
                                        Text(
                                          "July05 - July08",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.085,
                                        ),
                                        Text(
                                          "3 Days",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.11,
                                        ),
                                        Text(
                                          "Mark Willians",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.12,
                                        ),
                                        Container(
                                          height: height * 0.04,
                                          width: width * 0.06,
                                          decoration: BoxDecoration(
                                              color: Colors.green[100],
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      width * 0.005)),
                                          child: Center(
                                            child: Text("Aproved",
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
                                          width: width * 0.03,
                                        ),
                                        Text(
                                          "July 1 ,2023",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.1,
                                        ),
                                        Text(
                                          "July05 - July08",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.085,
                                        ),
                                        Text(
                                          "3 Days",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.11,
                                        ),
                                        Text(
                                          "Mark Willians",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.12,
                                        ),
                                        Container(
                                          height: height * 0.04,
                                          width: width * 0.06,
                                          decoration: BoxDecoration(
                                              color: Colors.green[100],
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      width * 0.005)),
                                          child: Center(
                                            child: Text("Aproved",
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
                                          width: width * 0.03,
                                        ),
                                        Text(
                                          "July 1 ,2023",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.1,
                                        ),
                                        Text(
                                          "July05 - July08",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.085,
                                        ),
                                        Text(
                                          "3 Days",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.11,
                                        ),
                                        Text(
                                          "Mark Willians",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.12,
                                        ),
                                        Container(
                                          height: height * 0.04,
                                          width: width * 0.06,
                                          decoration: BoxDecoration(
                                              color: Colors.green[100],
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      width * 0.005)),
                                          child: Center(
                                            child: Text("Aproved",
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
                                          width: width * 0.03,
                                        ),
                                        Text(
                                          "July 1 ,2023",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.1,
                                        ),
                                        Text(
                                          "July05 - July08",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.085,
                                        ),
                                        Text(
                                          "3 Days",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.11,
                                        ),
                                        Text(
                                          "Mark Willians",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.12,
                                        ),
                                        Container(
                                          height: height * 0.04,
                                          width: width * 0.06,
                                          decoration: BoxDecoration(
                                              color: Colors.green[100],
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      width * 0.005)),
                                          child: Center(
                                            child: Text("Aproved",
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
                                          width: width * 0.03,
                                        ),
                                        Text(
                                          "July 1 ,2023",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.1,
                                        ),
                                        Text(
                                          "July05 - July08",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.085,
                                        ),
                                        Text(
                                          "3 Days",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.11,
                                        ),
                                        Text(
                                          "Mark Willians",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.12,
                                        ),
                                        Container(
                                          height: height * 0.04,
                                          width: width * 0.06,
                                          decoration: BoxDecoration(
                                              color: Colors.green[100],
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      width * 0.005)),
                                          child: Center(
                                            child: Text("Aproved",
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
                                          width: width * 0.03,
                                        ),
                                        Text(
                                          "July 1 ,2023",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.1,
                                        ),
                                        Text(
                                          "July05 - July08",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.085,
                                        ),
                                        Text(
                                          "3 Days",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.11,
                                        ),
                                        Text(
                                          "Mark Willians",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appBlack),
                                        ),
                                        SizedBox(
                                          width: width * 0.12,
                                        ),
                                        Container(
                                          height: height * 0.04,
                                          width: width * 0.06,
                                          decoration: BoxDecoration(
                                              color: Colors.green[100],
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      width * 0.005)),
                                          child: Center(
                                            child: Text("Aproved",
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
