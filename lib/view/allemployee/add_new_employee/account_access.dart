import 'package:flutter/material.dart';

import '../../../common_widgets/button.dart';
import '../../../common_widgets/custom_textform.dart';
import '../../../uttils/colors.dart';

class AccountAcess extends StatefulWidget {
  const AccountAcess({super.key});

  @override
  State<AccountAcess> createState() => _AccountAcessState();
}

class _AccountAcessState extends State<AccountAcess> {
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
                    hint: "Enter Email Address",
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
                    hint: "Enter Slack ID",
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
                    hint: "Enter Skype ID",
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
                    hint: "Enter GitHub ID",
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
                    text: "Add",
                    txtsize: width * 0.01,
                    ontap: () {
                      _showMyDialog(context, width, height);
                    },
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

bool isChecked = false;
final namecontroller = TextEditingController();
Future<void> _showMyDialog(
    BuildContext context, double width, double height) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: height * 0.03),
            Row(
              children: [
                Text(
                  "Filter",
                  style: TextStyle(
                      fontSize: width * 0.012,
                      fontWeight: FontWeight.w900,
                      color: AppColors.appBlack),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            SizedBox(
              height: height * 0.06,
              width: width * 0.2,
              child: AppTextField(
                hint: "Search",
                controller: namecontroller,
                borderColor: Colors.grey,
                focusBorderColor: AppColors.appGrey,
                borderRadius: 8,
                prefixIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                Text(
                  "Department",
                  style: TextStyle(
                      fontSize: width * 0.012,
                      fontWeight: FontWeight.w900,
                      color: AppColors.appBlack),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                SizedBox(
                  width: width * 0.001,
                ),
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    // setState(() {
                    //   isChecked = value!;
                    // }
                    // );
                  },
                ),
                Text(
                  "Design",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    // setState(() {
                    //   isChecked = value!;
                    // }
                    // );
                  },
                ),
                Text(
                  "Java",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                SizedBox(
                  width: width * 0.001,
                ),
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    // setState(() {
                    //   isChecked = value!;
                    // }
                    // );
                  },
                ),
                Text(
                  "HR",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.05,
                ),
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    // setState(() {
                    //   isChecked = value!;
                    // }
                    // );
                  },
                ),
                Text(
                  "Python",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                SizedBox(
                  width: width * 0.001,
                ),
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    // setState(() {
                    //   isChecked = value!;
                    // }
                    // );
                  },
                ),
                Text(
                  "Sales",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    // setState(() {
                    //   isChecked = value!;
                    // }
                    // );
                  },
                ),
                Text(
                  "React Js",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                SizedBox(
                  width: width * 0.001,
                ),
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    // setState(() {
                    //   isChecked = value!;
                    // }
                    // );
                  },
                ),
                Text(
                  "Business",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    // setState(() {
                    //   isChecked = value!;
                    // }
                    // );
                  },
                ),
                Text(
                  "Account",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                Text(
                  "Select Type",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w900,
                      color: AppColors.appBlack),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: width * 0.001,
                ),
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    // setState(() {
                    //   isChecked = value!;
                    // }
                    // );
                  },
                ),
                Text(
                  "Office",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    // setState(() {
                    //   isChecked = value!;
                    // }
                    // );
                  },
                ),
                Text(
                  "Work From Home",
                  style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.w300,
                      color: AppColors.appBlack),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: height * 0.06,
                  width: width * 0.07,
                  child: AppButton(
                    bgcolor: AppColors.appWhite,
                    textcolor: AppColors.appBlack,
                    borderallcolor: AppColors.appGrey,
                    text: "Cancel",
                    txtsize: width * 0.01,
                    ontap: () {
                      Navigator.pop(context);
                    },
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
            )
          ],
        ),
      );
    },
  );
}
