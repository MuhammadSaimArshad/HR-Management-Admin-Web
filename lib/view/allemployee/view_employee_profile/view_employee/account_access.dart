import 'package:flutter/material.dart';
import 'package:hr_management_admin/uttils/colors.dart';

class ViewEmployeeProfileAccoutAcess extends StatefulWidget {
  const ViewEmployeeProfileAccoutAcess({super.key});

  @override
  State<ViewEmployeeProfileAccoutAcess> createState() =>
      _ViewEmployeeProfileAccoutAcessState();
}

class _ViewEmployeeProfileAccoutAcessState
    extends State<ViewEmployeeProfileAccoutAcess> {
  var height, width;

  final namecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: height * 0.6,
        width: width * 0.51,
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "Email Address",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appGrey),
                ),
                SizedBox(
                  width: width * 0.18,
                ),
                Text(
                  "Slack ID",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appGrey),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "brooklyn.s@example.com",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.13,
                ),
                Text(
                  "Simmons",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
              ],
            ),
            SizedBox(
                width: width * 0.45,
                child: const Divider(
                  color: AppColors.appGrey,
                )),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "Email Address",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appGrey),
                ),
                SizedBox(
                  width: width * 0.18,
                ),
                Text(
                  "Slack ID",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appGrey),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "brooklyn.s@example.com",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.13,
                ),
                Text(
                  "Simmons",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
              ],
            ),
            SizedBox(
                width: width * 0.45,
                child: const Divider(
                  color: AppColors.appGrey,
                )),
          ],
        )),
      ),
    );
  }
}
