import 'package:flutter/material.dart';
import 'package:flutter_meditate/utils/constants/app_colors.dart';
import 'package:flutter_meditate/utils/constants/app_textstyle.dart';
import 'package:flutter_meditate/views/components/auth_textformfield.dart';
import 'package:stacked/stacked.dart';

import 'login_viewmodel.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return ViewModelBuilder<LoginViewModel>.reactive(
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
                "Sign In",
                style: AppTextStyles.text25Bold,
              ),
              SizedBox(height: _screenSize.height * 0.1),
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
              TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password?",
                  style: AppTextStyles.text18.copyWith(color: AppColors.text),
                ),
              ),
              SizedBox(height: _screenSize.height * 0.1),
              MaterialButton(
                onPressed: model.navigateToHome,
                child: Text(
                  "Login",
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
                onPressed: model.navigateToSignUp,
                child: Text(
                  "Create an Account",
                  style: AppTextStyles.text18.copyWith(color: AppColors.text),
                ),
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}
