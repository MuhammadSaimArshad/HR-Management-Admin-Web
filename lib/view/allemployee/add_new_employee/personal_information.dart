import 'package:flutter/material.dart';
import 'package:hr_management_admin/common_widgets/button.dart';
import 'package:hr_management_admin/common_widgets/custom_textform.dart';
import 'package:hr_management_admin/uttils/colors.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({super.key});

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
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
            Row(
              children: [
                SizedBox(
                  width: width * 0.03,
                ),
                Container(
                  height: height * 0.17,
                  width: width * 0.08,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(width * 0.005),
                      border: Border.all(
                        width: width * 0.001,
                        color: AppColors.appGrey,
                      )),
                  child: const Center(
                    child: Icon(
                      Icons.camera_alt_outlined,
                      color: AppColors.appGrey,
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
                SizedBox(
                  width: width * 0.03,
                ),
                SizedBox(
                  height: height * 0.07,
                  width: width * 0.34,
                  child: AppTextField(
                    hint: "First Name",
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
                    hint: "Last Name",
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
                    hint: "Phone Number",
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
                    hint: "Date of Birth",
                    controller: namecontroller,
                    borderColor: AppColors.appGrey,
                    focusBorderColor: AppColors.onPrimary,
                    borderRadius: 8,
                    suffix: Icon(Icons.date_range),
                  ),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                SizedBox(
                  height: height * 0.07,
                  width: width * 0.34,
                  child: AppTextField(
                    hint: "Marital Status",
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
                  width: width * 0.03,
                ),
                SizedBox(
                  height: height * 0.07,
                  width: width * 0.34,
                  child: AppTextField(
                    hint: "Gender",
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
                    hint: "National",
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
                  width: width * 0.03,
                ),
                SizedBox(
                  height: height * 0.07,
                  width: width * 0.7,
                  child: AppTextField(
                    hint: "Address",
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
                  width: width * 0.22,
                  child: AppTextField(
                    hint: "City",
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
                  width: width * 0.22,
                  child: AppTextField(
                    hint: "State",
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
                  width: width * 0.22,
                  child: AppTextField(
                    hint: "Zip Code",
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
