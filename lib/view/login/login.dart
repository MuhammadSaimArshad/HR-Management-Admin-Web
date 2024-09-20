import 'package:flutter/material.dart';
import 'package:hr_management_admin/common_widgets/button.dart';
import 'package:hr_management_admin/common_widgets/custom_textform.dart';
import 'package:hr_management_admin/responsive/responsive.dart';
import 'package:hr_management_admin/uttils/colors.dart';
import 'package:hr_management_admin/view/login/forgot.dart';
import 'package:hr_management_admin/view/sidebar/sidebar.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var height, width;
  final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  bool isChecked = false;
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
                            height: height * 0.23,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: width * 0.03,
                              ),
                              Image.asset(
                                "images/Frame.png",
                                width: width * 0.05,
                                height: height * 0.08,
                              ),
                              Text(
                                "HRMS",
                                style: TextStyle(
                                    fontSize: width * 0.025,
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
                                width: width * 0.04,
                              ),
                              Text(
                                "Welcome 👋 ",
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
                                "Please Login here",
                                style: TextStyle(
                                    fontSize: width * 0.018,
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
                              hint: "Enter Email",
                              controller: emailcontroller,
                              borderColor: AppColors.onPrimary,
                              focusBorderColor: AppColors.onPrimary,
                              validator: (String? v) {
                                if (v!.isEmpty) {
                                  return 'Please enter your E-mail';
                                }
                                if (!emailRegex.hasMatch(v)) {
                                  return 'Please enter valid Email';
                                }
                                return null;
                              },
                              borderRadius: 8,
                            ),
                          ),
                          SizedBox(
                            height: height * 0.05,
                          ),
                          SizedBox(
                            height: height * 0.07,
                            width: width * 0.32,
                            child: AppTextField(
                              hint: "Password",
                              controller: passwordcontroller,
                              borderColor: AppColors.onPrimary,
                              focusBorderColor: AppColors.onPrimary,
                              suffix: const Icon(
                                Icons.remove_red_eye_sharp,
                              ),
                              validator: (String? v) {
                                if (v!.isEmpty) {
                                  return 'Please enter your password';
                                }
                                if (!emailRegex.hasMatch(v)) {
                                  return 'Please enter valid password';
                                }
                                return null;
                              },
                              borderRadius: 8,
                            ),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: width * 0.04,
                              ),
                              Checkbox(
                                activeColor: AppColors.onPrimary,
                                value: isChecked,
                                onChanged: (value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                              ),
                              Text(
                                "Remember Me",
                                style: TextStyle(
                                    fontSize: width * 0.01,
                                    fontWeight: FontWeight.w300,
                                    color: AppColors.appBlack),
                              ),
                              SizedBox(
                                width: width * 0.15,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ForgotPassword()));
                                },
                                child: Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                      fontSize: width * 0.01,
                                      fontWeight: FontWeight.w300,
                                      color: AppColors.onPrimary),
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
                              text: "Login",
                              ontap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SideBar()));
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
