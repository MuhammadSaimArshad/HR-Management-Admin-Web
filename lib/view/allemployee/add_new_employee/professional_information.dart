import 'package:flutter/material.dart';
import 'package:hr_management_admin/common_widgets/button.dart';
import 'package:hr_management_admin/uttils/colors.dart';

import '../../../common_widgets/custom_textform.dart';

class ProfessionalInformation extends StatefulWidget {
  const ProfessionalInformation({super.key});

  @override
  State<ProfessionalInformation> createState() =>
      _ProfessionalInformationState();
}

class _ProfessionalInformationState extends State<ProfessionalInformation> {
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
                  width: width * 0.03,
                ),
                SizedBox(
                  height: height * 0.07,
                  width: width * 0.34,
                  child: AppTextField(
                    hint: "Employee ID",
                    controller: namecontroller,
                    borderColor: AppColors.appGrey,
                    focusBorderColor: AppColors.onPrimary,
                    borderRadius: 8,
                  ),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                SizedBox(
                  height: height * 0.07,
                  width: width * 0.34,
                  child: AppTextField(
                    hint: "User Name",
                    controller: namecontroller,
                    borderColor: AppColors.appGrey,
                    focusBorderColor: AppColors.onPrimary,
                    borderRadius: 8,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              children: [
                SizedBox(
                  width: width * 0.03,
                ),
                SizedBox(
                  height: height * 0.07,
                  width: width * 0.34,
                  child: AppTextField(
                    hint: "Select Employee type",
                    controller: namecontroller,
                    borderColor: AppColors.appGrey,
                    focusBorderColor: AppColors.onPrimary,
                    borderRadius: 8,
                    suffix: Icon(Icons.arrow_drop_down_sharp),
                  ),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                SizedBox(
                  height: height * 0.07,
                  width: width * 0.34,
                  child: AppTextField(
                    hint: "Email Address",
                    controller: namecontroller,
                    borderColor: AppColors.appGrey,
                    focusBorderColor: AppColors.onPrimary,
                    borderRadius: 8,
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
                  width: width * 0.03,
                ),
                SizedBox(
                  height: height * 0.07,
                  width: width * 0.34,
                  child: AppTextField(
                    hint: "Select Department",
                    controller: namecontroller,
                    borderColor: AppColors.appGrey,
                    focusBorderColor: AppColors.onPrimary,
                    borderRadius: 8,
                    suffix: Icon(Icons.arrow_drop_down_sharp),
                  ),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                SizedBox(
                  height: height * 0.07,
                  width: width * 0.34,
                  child: AppTextField(
                    hint: "Enter Destination",
                    controller: namecontroller,
                    borderColor: AppColors.appGrey,
                    focusBorderColor: AppColors.onPrimary,
                    borderRadius: 8,
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
                  width: width * 0.03,
                ),
                SizedBox(
                  height: height * 0.07,
                  width: width * 0.34,
                  child: AppTextField(
                    hint: "Select Working Date",
                    controller: namecontroller,
                    borderColor: AppColors.appGrey,
                    focusBorderColor: AppColors.onPrimary,
                    borderRadius: 8,
                    suffix: Icon(Icons.arrow_drop_down_sharp),
                  ),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                SizedBox(
                  height: height * 0.07,
                  width: width * 0.34,
                  child: AppTextField(
                    hint: "Select Joining Date",
                    controller: namecontroller,
                    borderColor: AppColors.appGrey,
                    focusBorderColor: AppColors.onPrimary,
                    borderRadius: 8,
                    suffix: Icon(Icons.date_range),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                SizedBox(
                  width: width * 0.03,
                ),
                SizedBox(
                  height: height * 0.07,
                  width: width * 0.7,
                  child: AppTextField(
                    hint: "Select Office Location",
                    controller: namecontroller,
                    borderColor: AppColors.appGrey,
                    focusBorderColor: AppColors.onPrimary,
                    borderRadius: 8,
                    suffix: Icon(Icons.arrow_drop_down_sharp),
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
