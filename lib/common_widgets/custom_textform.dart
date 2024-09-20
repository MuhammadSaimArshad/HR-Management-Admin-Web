import 'package:flutter/material.dart';
import 'package:hr_management_admin/uttils/colors.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final double contentPadding;
  final double borderRadius;
  final Color borderColor;
  final Color focusBorderColor;
  final Color errorBorderColor;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final bool? psdObs;
  final String? obscuringCharacter;
  final Widget? suffix;
  final Widget? prefixIcon;
  void Function()? onTap;
  void Function(String)? onChanged;
  final double? margin;
  // final String label;
  final Iterable<String>? autofillHints;
  final TapRegionCallback? onTapOutside;
  final TextInputAction? textInputAction;

  AppTextField(
      {super.key,
      required this.hint,
      required this.controller,
      this.suffix,
      this.onTap,
      this.onChanged,
      required this.borderColor,
      required this.focusBorderColor,
      // required this.label,
      required this.borderRadius,
      this.obscuringCharacter,
      this.errorBorderColor = AppColors.onPrimary,
      this.contentPadding = 10,
      this.validator,
      this.keyboardType = TextInputType.text,
      this.psdObs,
      this.margin,
      this.autofillHints,
      this.onTapOutside,
      this.textInputAction,
      this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      autofillHints: autofillHints,
      keyboardType: keyboardType,
      onChanged: onChanged,
      obscureText: psdObs ?? false,
      obscuringCharacter: obscuringCharacter ?? '•',
      decoration: InputDecoration(
        hintText: hint,

        // label: Text(label),
        contentPadding: EdgeInsets.all(contentPadding),
        border: InputBorder.none,
        suffixIcon: suffix,
        prefixIcon: prefixIcon,
        // suffixIconColor: onPrimary,
        enabledBorder: _outlineInputBorder(borderRadius, borderColor),
        focusedBorder: _outlineInputBorder(borderRadius, focusBorderColor),
        errorBorder: _outlineInputBorder(borderRadius, errorBorderColor),
        focusedErrorBorder: _outlineInputBorder(borderRadius, errorBorderColor),
      ),
      validator: validator,
      textInputAction: textInputAction,
      onTapOutside: onTapOutside ?? (_) => FocusScope.of(context).unfocus(),
    );
  }
}

OutlineInputBorder _outlineInputBorder(borderRadius, borderColor) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius),
      borderSide: BorderSide(color: borderColor));
}
