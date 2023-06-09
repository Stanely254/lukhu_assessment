import 'package:flutter/material.dart';
import 'package:lukhu_assessment/src/constants/lukhu_constants.dart';
import 'package:lukhu_assessment/src/core.dart';

class CustomTextInput extends StatelessWidget {
  const CustomTextInput({
    super.key,
    this.label,
    this.validator,
    this.onChanged,
    this.onTap,
    this.controller,
    this.inputType = TextInputType.text,
    this.hintText = '',
    this.suffix,
    this.obscureText = false,
    this.autovalidateMode = AutovalidateMode.disabled,
    this.inputAction = TextInputAction.done,
    this.onFieldSubmitted,
  });
  final String? label;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final TextEditingController? controller;
  final TextInputType inputType;
  final String hintText;
  final Widget? suffix;
  final bool obscureText;
  final AutovalidateMode autovalidateMode;
  final TextInputAction inputAction;
  final void Function(String)? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (label != null)
          Text(
            label!,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: LukhuContants.textDarkColor,
            ),
          ).alignment(Alignment.topLeft).padding(bottom: 10),
        TextFormField(
          autovalidateMode: autovalidateMode,
          obscureText: obscureText,
          controller: controller,
          onChanged: onChanged,
          validator: validator,
          textInputAction: inputAction,
          keyboardType: inputType,
          obscuringCharacter: '*',
          onFieldSubmitted: onFieldSubmitted,
          decoration: InputDecoration(
              hintText: hintText,
              suffixIcon: suffix,
              fillColor: Colors.white,
              filled: true,
              errorStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: LukhuContants.errorTextRed,
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      BorderSide(color: LukhuContants.textFieldGrayBoarder)),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      BorderSide(color: LukhuContants.textFieldGrayBoarder)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      BorderSide(color: LukhuContants.textFieldGrayBoarder)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      BorderSide(color: LukhuContants.buttonBlueDissabled)),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: LukhuContants.borderError))),
        )
      ],
    );
  }
}
