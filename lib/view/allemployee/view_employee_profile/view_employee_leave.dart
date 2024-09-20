import 'package:flutter/material.dart';

import '../../../uttils/colors.dart';

class ViewEmployeeLeaves extends StatefulWidget {
  const ViewEmployeeLeaves({super.key});

  @override
  State<ViewEmployeeLeaves> createState() => _ViewEmployeeLeavesState();
}

class _ViewEmployeeLeavesState extends State<ViewEmployeeLeaves> {
  var height, width;

  final namecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: height * 0.65,
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
                  width: width * 0.04,
                ),
                Text(
                  "Date",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appGrey),
                ),
                SizedBox(
                  width: width * 0.07,
                ),
                Text(
                  "Duration",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appGrey),
                ),
                SizedBox(
                  width: width * 0.05,
                ),
                Text(
                  "Days",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appGrey),
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                Text(
                  "Reporating Manager",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appGrey),
                ),
                SizedBox(
                  width: width * 0.05,
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
              height: height * 0.02,
            ),
            Row(
              children: [
                SizedBox(
                  width: width * 0.04,
                ),
                Text(
                  "July 1 ,2023",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                Text(
                  "July05 - July08",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Text(
                  "3 Days",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "Mark Willians",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.07,
                ),
                Container(
                  height: height * 0.04,
                  width: width * 0.06,
                  decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.circular(width * 0.005)),
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
                  width: width * 0.04,
                ),
                Text(
                  "July 1 ,2023",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                Text(
                  "July05 - July08",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Text(
                  "3 Days",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "Mark Willians",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.07,
                ),
                Container(
                  height: height * 0.04,
                  width: width * 0.06,
                  decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.circular(width * 0.005)),
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
                  width: width * 0.04,
                ),
                Text(
                  "July 1 ,2023",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                Text(
                  "July05 - July08",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Text(
                  "3 Days",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "Mark Willians",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.07,
                ),
                Container(
                  height: height * 0.04,
                  width: width * 0.06,
                  decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.circular(width * 0.005)),
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
                  width: width * 0.04,
                ),
                Text(
                  "July 1 ,2023",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                Text(
                  "July05 - July08",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Text(
                  "3 Days",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "Mark Willians",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.07,
                ),
                Container(
                  height: height * 0.04,
                  width: width * 0.06,
                  decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.circular(width * 0.005)),
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
