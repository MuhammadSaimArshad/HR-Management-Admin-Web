import 'package:flutter/material.dart';
import 'package:hr_management_admin/uttils/colors.dart';

class ViewEmployeeProfilePersonalInformation extends StatefulWidget {
  const ViewEmployeeProfilePersonalInformation({super.key});

  @override
  State<ViewEmployeeProfilePersonalInformation> createState() =>
      _ViewEmployeeProfilePersonalInformationState();
}

class _ViewEmployeeProfilePersonalInformationState
    extends State<ViewEmployeeProfilePersonalInformation> {
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
                  "First Name",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appGrey),
                ),
                SizedBox(
                  width: width * 0.2,
                ),
                Text(
                  "Last Name",
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
                  "Brooklyn",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.21,
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
                  "Mobile Number",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appGrey),
                ),
                SizedBox(
                  width: width * 0.18,
                ),
                Text(
                  "Email Address",
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
                  "(555) 333-1234",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.18,
                ),
                Text(
                  "brooklyn.s@example.com",
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
                  "First Name",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appGrey),
                ),
                SizedBox(
                  width: width * 0.2,
                ),
                Text(
                  "Last Name",
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
                  "Brooklyn",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.21,
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
                  "First Name",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appGrey),
                ),
                SizedBox(
                  width: width * 0.2,
                ),
                Text(
                  "Last Name",
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
                  "Brooklyn",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.21,
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
