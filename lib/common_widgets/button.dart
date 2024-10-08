import 'package:flutter/material.dart';
import 'package:hr_management_admin/uttils/colors.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  double? height;
  double? width;
  final double? txtsize;
  double? radius;

  final Color? bgcolor;
  final Color? textcolor;
  final Color? borderallcolor;

  AppButton(
      {super.key,
      this.txtsize,
      this.textcolor,
      this.bgcolor,
      this.borderallcolor,
      required this.text,
      required this.ontap,
      this.radius,
      this.height,
      this.width});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: ontap,
      child: Container(
        height: height * 0.07,
        width: width * 0.8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius ?? width * 0.005),
            color: bgcolor ?? AppColors.onPrimary,
            border: Border.all(
              width: width * 0.001,
              color: borderallcolor ?? Colors.transparent,
            )),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: txtsize ?? width * 0.015,
              fontWeight: FontWeight.w300,
              color: textcolor ?? AppColors.appWhite,
            ),
          ),
        ),
      ),
    );
  }
}
