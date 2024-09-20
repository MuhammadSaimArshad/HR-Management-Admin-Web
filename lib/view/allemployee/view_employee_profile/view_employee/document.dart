import 'package:flutter/material.dart';
import 'package:hr_management_admin/uttils/colors.dart';

class ViewEmployeeProfileDocument extends StatefulWidget {
  const ViewEmployeeProfileDocument({super.key});

  @override
  State<ViewEmployeeProfileDocument> createState() =>
      _ViewEmployeeProfileDocumentState();
}

class _ViewEmployeeProfileDocumentState
    extends State<ViewEmployeeProfileDocument> {
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: height * 0.07,
                  width: width * 0.2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: width * 0.001, color: AppColors.appGrey),
                      borderRadius: BorderRadius.circular(width * 0.003)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Text(
                        "Appointment Letter.pdf",
                        style: TextStyle(
                            fontSize: width * 0.01,
                            fontWeight: FontWeight.w300,
                            color: AppColors.appGrey),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Icon(Icons.remove_red_eye_outlined),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Icon(Icons.download),
                    ],
                  ),
                ),
                Container(
                  height: height * 0.07,
                  width: width * 0.2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: width * 0.001, color: AppColors.appGrey),
                      borderRadius: BorderRadius.circular(width * 0.003)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Text(
                        "Appointment Letter.pdf",
                        style: TextStyle(
                            fontSize: width * 0.01,
                            fontWeight: FontWeight.w300,
                            color: AppColors.appGrey),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Icon(Icons.remove_red_eye_outlined),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Icon(Icons.download),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: height * 0.07,
                  width: width * 0.2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: width * 0.001, color: AppColors.appGrey),
                      borderRadius: BorderRadius.circular(width * 0.003)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Text(
                        "Appointment Letter.pdf",
                        style: TextStyle(
                            fontSize: width * 0.01,
                            fontWeight: FontWeight.w300,
                            color: AppColors.appGrey),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Icon(Icons.remove_red_eye_outlined),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Icon(Icons.download),
                    ],
                  ),
                ),
                Container(
                  height: height * 0.07,
                  width: width * 0.2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: width * 0.001, color: AppColors.appGrey),
                      borderRadius: BorderRadius.circular(width * 0.003)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Text(
                        "Appointment Letter.pdf",
                        style: TextStyle(
                            fontSize: width * 0.01,
                            fontWeight: FontWeight.w300,
                            color: AppColors.appGrey),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Icon(Icons.remove_red_eye_outlined),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Icon(Icons.download),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: height * 0.07,
                  width: width * 0.2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: width * 0.001, color: AppColors.appGrey),
                      borderRadius: BorderRadius.circular(width * 0.003)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Text(
                        "Appointment Letter.pdf",
                        style: TextStyle(
                            fontSize: width * 0.01,
                            fontWeight: FontWeight.w300,
                            color: AppColors.appGrey),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Icon(Icons.remove_red_eye_outlined),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Icon(Icons.download),
                    ],
                  ),
                ),
                Container(
                  height: height * 0.07,
                  width: width * 0.2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: width * 0.001, color: AppColors.appGrey),
                      borderRadius: BorderRadius.circular(width * 0.003)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Text(
                        "Appointment Letter.pdf",
                        style: TextStyle(
                            fontSize: width * 0.01,
                            fontWeight: FontWeight.w300,
                            color: AppColors.appGrey),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Icon(Icons.remove_red_eye_outlined),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Icon(Icons.download),
                    ],
                  ),
                )
              ],
            ),
          ],
        )),
      ),
    );
  }
}
