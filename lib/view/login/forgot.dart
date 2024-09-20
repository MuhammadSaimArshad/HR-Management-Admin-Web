import 'package:flutter/material.dart';
import 'package:hr_management_admin/common_widgets/button.dart';
import 'package:hr_management_admin/common_widgets/custom_textform.dart';
import 'package:hr_management_admin/responsive/responsive.dart';
import 'package:hr_management_admin/uttils/colors.dart';
import 'package:hr_management_admin/view/login/enterotp.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  var height, width;
  final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
  final emailcontroller = TextEditingController();

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
                                "Forgot Password",
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
                                "Enter your registered email address. we’ll send you a code \nto reset your password.",
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
                          SizedBox(
                            height: height * 0.07,
                            width: width * 0.32,
                            child: AppTextField(
                              hint: "Email Address",
                              controller: emailcontroller,
                              borderColor: AppColors.onPrimary,
                              focusBorderColor: AppColors.onPrimary,
                              validator: (String? v) {
                                if (v!.isEmpty) {
                                  return 'Please enter your Email Address';
                                }
                                if (!emailRegex.hasMatch(v)) {
                                  return 'Please enter valid Email Address';
                                }
                                return null;
                              },
                              borderRadius: 8,
                            ),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          SizedBox(
                            height: height * 0.07,
                            width: width * 0.32,
                            child: AppButton(
                              text: "Send OTP",
                              ontap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => EnterOTP()));
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
