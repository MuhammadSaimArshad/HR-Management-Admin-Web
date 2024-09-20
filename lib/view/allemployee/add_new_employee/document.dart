import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../../common_widgets/button.dart';
import '../../../uttils/colors.dart';

class Document extends StatefulWidget {
  const Document({super.key});

  @override
  State<Document> createState() => _DocumentState();
}

class _DocumentState extends State<Document> {
  var height, width;

  final namecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: height,
        width: width * 0.8,
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              children: [
                SizedBox(
                  width: width * 0.05,
                ),
                Text(
                  "Upload Appointment Letter",
                  style: TextStyle(
                    fontSize: width * 0.012,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: width * 0.2,
                ),
                Text(
                  "Upload Salary Slips",
                  style: TextStyle(
                    fontSize: width * 0.012,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DottedBorder(
                  color: const Color(0xff2879FF),
                  strokeWidth: 1,
                  borderType: BorderType.RRect,
                  radius: Radius.circular(12),
                  child: Container(
                    height: height * 0.21,
                    width: width * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: height * 0.07,
                          width: width * 0.03,
                          decoration: BoxDecoration(
                              color: AppColors.onPrimary,
                              borderRadius:
                                  BorderRadius.circular(width * 0.005)),
                          child: const Center(
                            child: Icon(
                              Icons.arrow_circle_up_sharp,
                              color: AppColors.appWhite,
                            ),
                          ),
                        ),
                        Text(
                          "Drag & Drop or choose file to upload",
                          style: TextStyle(
                              fontSize: width * 0.01,
                              color: AppColors.appBlack,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          "Supported formats : Jpeg, pdf",
                          style: TextStyle(
                              fontSize: width * 0.01,
                              color: AppColors.appGrey,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ),
                DottedBorder(
                  color: const Color(0xff2879FF),
                  strokeWidth: 1,
                  borderType: BorderType.RRect,
                  radius: Radius.circular(12),
                  child: Container(
                    height: height * 0.21,
                    width: width * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: height * 0.07,
                          width: width * 0.03,
                          decoration: BoxDecoration(
                              color: AppColors.onPrimary,
                              borderRadius:
                                  BorderRadius.circular(width * 0.005)),
                          child: const Center(
                            child: Icon(
                              Icons.arrow_circle_up_sharp,
                              color: AppColors.appWhite,
                            ),
                          ),
                        ),
                        Text(
                          "Drag & Drop or choose file to upload",
                          style: TextStyle(
                              fontSize: width * 0.01,
                              color: AppColors.appBlack,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          "Supported formats : Jpeg, pdf",
                          style: TextStyle(
                              fontSize: width * 0.01,
                              color: AppColors.appGrey,
                              fontWeight: FontWeight.w300),
                        ),
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
                  width: width * 0.05,
                ),
                Text(
                  "Upload Reliving Letter",
                  style: TextStyle(
                    fontSize: width * 0.012,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: width * 0.23,
                ),
                Text(
                  "Upload Experience Letter",
                  style: TextStyle(
                    fontSize: width * 0.012,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DottedBorder(
                  color: const Color(0xff2879FF),
                  strokeWidth: 1,
                  borderType: BorderType.RRect,
                  radius: Radius.circular(12),
                  child: Container(
                    height: height * 0.21,
                    width: width * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: height * 0.07,
                          width: width * 0.03,
                          decoration: BoxDecoration(
                              color: AppColors.onPrimary,
                              borderRadius:
                                  BorderRadius.circular(width * 0.005)),
                          child: const Center(
                            child: Icon(
                              Icons.arrow_circle_up_sharp,
                              color: AppColors.appWhite,
                            ),
                          ),
                        ),
                        Text(
                          "Drag & Drop or choose file to upload",
                          style: TextStyle(
                              fontSize: width * 0.01,
                              color: AppColors.appBlack,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          "Supported formats : Jpeg, pdf",
                          style: TextStyle(
                              fontSize: width * 0.01,
                              color: AppColors.appGrey,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ),
                DottedBorder(
                  color: const Color(0xff2879FF),
                  strokeWidth: 1,
                  borderType: BorderType.RRect,
                  radius: Radius.circular(12),
                  child: Container(
                    height: height * 0.21,
                    width: width * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: height * 0.07,
                          width: width * 0.03,
                          decoration: BoxDecoration(
                              color: AppColors.onPrimary,
                              borderRadius:
                                  BorderRadius.circular(width * 0.005)),
                          child: const Center(
                            child: Icon(
                              Icons.arrow_circle_up_sharp,
                              color: AppColors.appWhite,
                            ),
                          ),
                        ),
                        Text(
                          "Drag & Drop or choose file to upload",
                          style: TextStyle(
                              fontSize: width * 0.01,
                              color: AppColors.appBlack,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          "Supported formats : Jpeg, pdf",
                          style: TextStyle(
                              fontSize: width * 0.01,
                              color: AppColors.appGrey,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                SizedBox(
                  width: width * 0.58,
                ),
                SizedBox(
                  height: height * 0.06,
                  width: width * 0.07,
                  child: AppButton(
                    bgcolor: AppColors.appWhite,
                    textcolor: AppColors.appBlack,
                    borderallcolor: AppColors.appGrey,
                    text: "Cancel",
                    txtsize: width * 0.01,
                    ontap: () {},
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
            ),
            SizedBox(
              height: height * 0.02,
            ),
          ],
        )),
      ),
    );
  }
}
