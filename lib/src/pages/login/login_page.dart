import 'package:flutter/material.dart';
import 'package:lukhu_assessment/src/commands/login_command.dart';
import 'package:lukhu_assessment/src/constants/lukhu_constants.dart';
import 'package:lukhu_assessment/src/controllers/auth_controller.dart';
import 'package:lukhu_assessment/src/core.dart';
import 'package:lukhu_assessment/src/widgets/custom_text_input.dart';
import 'package:lukhu_assessment/src/widgets/lukhu_icon.dart';
import 'package:provider/provider.dart';

import '../../widgets/buttons/custom_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = context.watch();
    LoginCommand loginCommand = LoginCommand(context);
    return Scaffold(
      key: authController.loginPageKey,
      body: SizedBox(
        height: context.heightPx,
        width: context.widthPx,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: authController.loginFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const LukhuIcon().padding(top: kToolbarHeight, bottom: 16),
                Text(
                  'Karibu! Log in below',
                  style: TextStyle(
                    color: LukhuContants.textDarkColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                  ),
                ).padding(bottom: 24),
                CustomTextInput(
                  controller: authController.phoneNumberController,
                  inputType: TextInputType.text,
                  inputAction: TextInputAction.next,
                  onChanged: (value) {
                    context.read<AuthController>().loginData["username"] =
                        value;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "This field is required.";
                    }
                    return null;
                  },
                  hintText: 'Username or Phone Number',
                ).padding(bottom: 16),
                CustomTextInput(
                  controller: authController.passwordController,
                  obscureText: authController.showPassword,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  inputType: TextInputType.visiblePassword,
                  onChanged: (value) {
                    context.read<AuthController>().loginData["password"] =
                        value;
                  },
                  hintText: '**********',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "This field is required";
                    }
                    return null;
                  },
                  suffix: IconButton(
                    icon: Icon(
                      authController.showPassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: LukhuContants.grey80,
                    ),
                    onPressed: () {
                      authController.showPassword =
                          !authController.showPassword;
                    },
                  ),
                ).padding(bottom: 11),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: LukhuContants.linkBlue,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ).alignment(Alignment.topLeft),
                const Spacer(),
                CustomButton(
                  label: 'Log in',
                  disabledColor: LukhuContants.buttonBlueDissabled,
                  isLoading: authController.isLoading,
                  onTap: authController.userCanLogin
                      ? () {
                          loginCommand.execute();
                        }
                      : null,
                  color: LukhuContants.buttonBlue,
                  radius: 8,
                  height: 40,
                  textColor: LukhuContants.lukhuWhite,
                ),
                CustomButton(
                  label: 'Create an Account',
                  onTap: () {},
                  color: LukhuContants.lukhuWhite,
                  borderColor: LukhuContants.boarderColor,
                  radius: 8,
                  height: 40,
                  textColor: LukhuContants.textDarkColor,
                ).padding(bottom: 48, top: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
