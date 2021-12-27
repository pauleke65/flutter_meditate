import 'package:flutter/material.dart';
import 'package:flutter_meditate/utils/constants/app_colors.dart';
import 'package:flutter_meditate/utils/constants/app_textstyle.dart';
import 'package:flutter_meditate/views/components/auth_textformfield.dart';
import 'package:stacked/stacked.dart';

import 'signup_viewmodel.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fullNameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    final _screenSize = MediaQuery.of(context).size;
    return ViewModelBuilder<SignUpViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Container(
          width: double.infinity,
          height: _screenSize.height,
          padding: EdgeInsets.symmetric(horizontal: _screenSize.width * 0.08),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: _screenSize.height * 0.1),
              Text(
                "Create Account",
                style: AppTextStyles.text25Bold,
              ),
              SizedBox(height: _screenSize.height * 0.1),
              AuthTextFormField(
                  hintText: "Full Name",
                  icon: Icons.person_outline_rounded,
                  controller: fullNameController,
                  authFormFieldType: AuthFormFieldType.text),
              SizedBox(height: _screenSize.height * 0.03),
              AuthTextFormField(
                  hintText: "Email Address",
                  icon: Icons.mail_outline_rounded,
                  controller: emailController,
                  authFormFieldType: AuthFormFieldType.email),
              SizedBox(height: _screenSize.height * 0.03),
              AuthTextFormField(
                  hintText: "Password",
                  icon: Icons.lock_outline_rounded,
                  controller: passwordController,
                  authFormFieldType: AuthFormFieldType.password),
              SizedBox(height: _screenSize.height * 0.03),
              SizedBox(height: _screenSize.height * 0.1),
              MaterialButton(
                onPressed: () {},
                child: Text(
                  "Create Account",
                  style: AppTextStyles.text18.copyWith(color: AppColors.white),
                ),
                color: AppColors.primary2,
                elevation: 0,
                height: _screenSize.height * 0.055,
                minWidth: double.infinity,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: const BorderSide(
                      width: 0.5,
                      color: AppColors.primary2,
                    )),
              ),
              SizedBox(height: _screenSize.height * 0.03),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Sign in",
                  style: AppTextStyles.text18.copyWith(color: AppColors.text),
                ),
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => SignUpViewModel(),
    );
  }
}
