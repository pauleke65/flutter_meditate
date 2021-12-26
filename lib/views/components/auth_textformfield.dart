import 'package:flutter/material.dart';
import 'package:flutter_meditate/utils/constants/app_colors.dart';
import 'package:flutter_meditate/utils/constants/app_textstyle.dart';

enum AuthFormFieldType { email, password, text }

class AuthTextFormField extends StatelessWidget {
  const AuthTextFormField({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.controller,
    required this.authFormFieldType,
  }) : super(key: key);

  final String hintText;
  final IconData icon;
  final TextEditingController controller;
  final AuthFormFieldType authFormFieldType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: AppTextStyles.text18,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        fillColor: AppColors.lightGrey,
        filled: true,
        prefixIcon: Icon(
          icon,
          color: AppColors.black,
        ),
        hintText: hintText,
        hintStyle: AppTextStyles.text18,
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(
            color: AppColors.lightGrey,
            width: 1.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(
            color: AppColors.lightGrey,
            width: 1.0,
          ),
        ),
      ),
    );
  }
}
