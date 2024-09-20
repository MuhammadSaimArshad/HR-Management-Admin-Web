import 'package:flutter/material.dart';
import 'package:hr_management_admin/uttils/colors.dart';

class ViewEmployeePorjects extends StatefulWidget {
  const ViewEmployeePorjects({super.key});

  @override
  State<ViewEmployeePorjects> createState() => _ViewEmployeePorjectsState();
}

class _ViewEmployeePorjectsState extends State<ViewEmployeePorjects> {
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
                  "Sr N0.",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appGrey),
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                Text(
                  "Name",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appGrey),
                ),
                SizedBox(
                  width: width * 0.1,
                ),
                Text(
                  "Strat Date",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appGrey),
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                Text(
                  "Finish Date",
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
                  "1",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "Amongus - Discovery Phase",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "Feb 01, 2023",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "Mar 05, 2023",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Container(
                  height: height * 0.04,
                  width: width * 0.06,
                  decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.circular(width * 0.005)),
                  child: Center(
                    child: Text("Completd",
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
            Row(
              children: [
                SizedBox(
                  width: width * 0.04,
                ),
                Text(
                  "2",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "Amongus - Discovery Phase",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "Feb 01, 2023",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "Mar 05, 2023",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Container(
                  height: height * 0.04,
                  width: width * 0.06,
                  decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.circular(width * 0.005)),
                  child: Center(
                    child: Text("Completd",
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
            Row(
              children: [
                SizedBox(
                  width: width * 0.04,
                ),
                Text(
                  "3",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "Amongus - Discovery Phase",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "Feb 01, 2023",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "Mar 05, 2023",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Container(
                  height: height * 0.04,
                  width: width * 0.06,
                  decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.circular(width * 0.005)),
                  child: Center(
                    child: Text("Completd",
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
