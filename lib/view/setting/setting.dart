import 'package:flutter/material.dart';
import 'package:hr_management_admin/common_widgets/custom_textform.dart';
import 'package:hr_management_admin/responsive/responsive.dart';
import 'package:hr_management_admin/uttils/colors.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  var height, width;
  bool isChecked = false;
  final searchcontroller = TextEditingController();
  bool _isSwitched = false;

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
                                          Text("All Setting",
                                              style: TextStyle(
                                                fontSize: width * 0.015,
                                                fontWeight: FontWeight.w600,
                                              )),
                                          Text(
                                            " All System Setting",
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
                                    ListTile(
                                      title: Text("Appearance",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w600,
                                              color: AppColors.appBlack)),
                                      subtitle: Text(
                                          "Customize how your theme looks on your device",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appGrey)),
                                      trailing: Container(
                                        height: height * 0.05,
                                        width: width * 0.05,
                                        decoration: BoxDecoration(
                                            color: AppColors.appGrey,
                                            borderRadius: BorderRadius.circular(
                                                width * 0.005)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text("Light",
                                                style: TextStyle(
                                                    fontSize: width * 0.009,
                                                    fontWeight: FontWeight.w300,
                                                    color: AppColors.appBlack)),
                                            Icon(
                                              Icons
                                                  .keyboard_arrow_down_outlined,
                                              size: width * 0.01,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                        width: width * 0.72,
                                        child: const Divider(
                                          color: AppColors.appGrey,
                                        )),
                                    ListTile(
                                      title: Text("Language",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w600,
                                              color: AppColors.appBlack)),
                                      subtitle: Text("Select Your Language",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appGrey)),
                                      trailing: Container(
                                        height: height * 0.05,
                                        width: width * 0.05,
                                        decoration: BoxDecoration(
                                            color: AppColors.appGrey,
                                            borderRadius: BorderRadius.circular(
                                                width * 0.005)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text("English",
                                                style: TextStyle(
                                                    fontSize: width * 0.009,
                                                    fontWeight: FontWeight.w300,
                                                    color: AppColors.appBlack)),
                                            Icon(
                                              Icons
                                                  .keyboard_arrow_down_outlined,
                                              size: width * 0.01,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                        width: width * 0.72,
                                        child: const Divider(
                                          color: AppColors.appGrey,
                                        )),
                                    ListTile(
                                      title: Text("Two-factor Authentication",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w600,
                                              color: AppColors.appBlack)),
                                      subtitle: Text(
                                          "Keep your account secure by enabling 2FA via mail",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appGrey)),
                                      trailing: Switch(
                                        value: _isSwitched,
                                        onChanged: (value) {
                                          setState(() {
                                            _isSwitched = value;
                                          });
                                        },
                                        activeColor: Colors.green,
                                        inactiveThumbColor: Colors.white,
                                        inactiveTrackColor: Colors.green,
                                      ),
                                    ),
                                    SizedBox(
                                        width: width * 0.72,
                                        child: const Divider(
                                          color: AppColors.appGrey,
                                        )),
                                    ListTile(
                                      title: Text("Mobile Push Notifications",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w600,
                                              color: AppColors.appBlack)),
                                      subtitle: Text(
                                          "Receive push notification",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appGrey)),
                                      trailing: Switch(
                                        value: _isSwitched,
                                        onChanged: (value) {
                                          setState(() {
                                            _isSwitched = value;
                                          });
                                        },
                                        activeColor: Colors.green,
                                        inactiveThumbColor: Colors.white,
                                        inactiveTrackColor: Colors.green,
                                      ),
                                    ),
                                    SizedBox(
                                        width: width * 0.72,
                                        child: const Divider(
                                          color: AppColors.appGrey,
                                        )),
                                    ListTile(
                                      title: Text("Desktop Notification",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w600,
                                              color: AppColors.appBlack)),
                                      subtitle: Text(
                                          "Receive push notification  in desktop",
                                          style: TextStyle(
                                              fontSize: width * 0.01,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.appGrey)),
                                      trailing: Switch(
                                        value: _isSwitched,
                                        onChanged: (value) {
                                          setState(() {
                                            _isSwitched = value;
                                          });
                                        },
                                        activeColor: Colors.green,
                                        inactiveThumbColor: Colors.white,
                                        inactiveTrackColor: Colors.green,
                                      ),
                                    ),
                                    SizedBox(
                                        width: width * 0.72,
                                        child: const Divider(
                                          color: AppColors.appGrey,
                                        )),
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
