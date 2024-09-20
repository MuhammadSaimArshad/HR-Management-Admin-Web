import 'package:flutter/material.dart';
import 'package:hr_management_admin/common_widgets/button.dart';
import 'package:hr_management_admin/common_widgets/custom_textform.dart';
import 'package:hr_management_admin/responsive/responsive.dart';
import 'package:hr_management_admin/uttils/colors.dart';
import 'package:hr_management_admin/view/login/login.dart';

class EnterOTP extends StatefulWidget {
  const EnterOTP({super.key});

  @override
  State<EnterOTP> createState() => _EnterOTPState();
}

class _EnterOTPState extends State<EnterOTP> {
  var height, width;

  final otpcontroller = TextEditingController();

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
            body: Container(
              height: height,
              width: width,
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                    height: height,
                    width: width * 0.6,
                    color: AppColors.appGrey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            height: height * 0.9,
                            width: width * 0.55,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/dashbord.png"),
                                  fit: BoxFit.fill),
                            )),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: height,
                      width: width,
                      color: Colors.white,
                      child: Column(
                        children: [
                          SizedBox(
                            height: height * 0.29,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: width * 0.04,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  size: width * 0.012,
                                ),
                              ),
                              Text(
                                "Back",
                                style: TextStyle(
                                  fontSize: width * 0.01,
                                  fontWeight: FontWeight.w600,
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
                                width: width * 0.04,
                              ),
                              Text(
                                "Enter OTP",
                                style: TextStyle(
                                  fontSize: width * 0.02,
                                  fontWeight: FontWeight.w600,
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
                                width: width * 0.04,
                              ),
                              Text(
                                "We have share a code of your registered email \naddress robertallen@example.com",
                                style: TextStyle(
                                    fontSize: width * 0.011,
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
                              SizedBox(
                                height: height * 0.07,
                                width: width * 0.03,
                                child: AppTextField(
                                  hint: "5",
                                  controller: otpcontroller,
                                  borderColor: AppColors.onPrimary,
                                  focusBorderColor: AppColors.onPrimary,
                                  borderRadius: 8,
                                ),
                              ),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              SizedBox(
                                height: height * 0.07,
                                width: width * 0.03,
                                child: AppTextField(
                                  hint: "5",
                                  controller: otpcontroller,
                                  borderColor: AppColors.onPrimary,
                                  focusBorderColor: AppColors.onPrimary,
                                  borderRadius: 8,
                                ),
                              ),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              SizedBox(
                                height: height * 0.07,
                                width: width * 0.03,
                                child: AppTextField(
                                  hint: "",
                                  controller: otpcontroller,
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
                                width: width * 0.03,
                                child: AppTextField(
                                  hint: "",
                                  controller: otpcontroller,
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
                                width: width * 0.03,
                                child: AppTextField(
                                  hint: "",
                                  controller: otpcontroller,
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
                          SizedBox(
                            height: height * 0.07,
                            width: width * 0.32,
                            child: AppButton(
                              text: "Verfiy",
                              ontap: () {
                                _showMyDialog(context, width, height);
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
  }
}

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
            SizedBox(height: height * 0.05),
            Image.asset(
              "images/wellcomeback.png",
            ),
            SizedBox(height: height * 0.03),
            Text(
              "Password Update\n    Successfully",
              style: TextStyle(
                  fontSize: width * 0.012,
                  fontWeight: FontWeight.w900,
                  color: AppColors.appBlack),
            ),
            SizedBox(height: height * 0.02),
            Text(
              "Your password has been update successfully",
              style: TextStyle(
                  fontSize: width * 0.01,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey[400]),
            ),
            SizedBox(height: height * 0.02),
            SizedBox(
              height: height * 0.06,
              width: width * 0.2,
              child: AppButton(
                text: "Back to Login",
                txtsize: width * 0.01,
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
              ),
            )
          ],
        ),
      );
    },
  );
}
