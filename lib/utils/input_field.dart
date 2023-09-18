import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'app_colors.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    required this.controller,
    this.label,
    this.focusNode,
    this.hint,
    this.textInputType,
    this.inputFormatters,
    this.readOnly = false,
    this.maxLength,
    this.validator,
    this.padding,
    this.prefix,
    this.suffix,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.onFieldSubmitted,
    this.textInputAction,
  }) : super(key: key);

  final TextEditingController controller;
  final String? label;
  final String? hint;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? inputFormatters;
  final bool readOnly;
  final int? maxLength;
  final String? Function(String?)? validator;
  final EdgeInsets? padding;
  final Widget? prefix;
  final Widget? prefixIcon;
  final Widget? suffix;
  final Widget? suffixIcon;
  final bool obscureText;
  final Function(String)? onFieldSubmitted;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child:
            SizedBox(
              height: validator == null ? 40 : null,
              child: TextFormField(

                controller: controller,
                focusNode: focusNode,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
                  //  labelText: label,
                  hintText: label,
                  counterText: '',
                  errorStyle: const TextStyle(height: 0,fontSize: 0),
                  labelStyle: const TextStyle(color: Colors.grey),
                  prefix: prefix,
                  suffix: suffix,
                  prefixIcon: prefixIcon,
                  suffixIcon: suffixIcon,
                  alignLabelWithHint: true,
                  fillColor: AppColors.grey,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3.0),
                    borderSide: BorderSide(color:AppColors.grey, width: 3),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3.0),
                    borderSide: BorderSide(color: AppColors.grey, width: 3),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3.0),
                    borderSide: BorderSide(color: AppColors.grey, width: 3),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3.0),
                    borderSide: const BorderSide(color: Colors.grey, width: 3),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3.0),
                    borderSide: const BorderSide(color: Colors.grey, width: 3),
                  ),
                ),
                style: const TextStyle(
                  fontSize: 16,
                  color: AppColors.white
                ),
                obscureText: obscureText,
                obscuringCharacter: '●',
                // autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: validator,
                readOnly: readOnly,
                keyboardType: textInputType,
                inputFormatters: inputFormatters,
                maxLength: maxLength,
                // onFieldSubmitted: onFieldSubmitted,
                textInputAction: textInputAction,
                cursorColor: AppColors.black,
                cursorWidth: 2,
              ),
            ),

    );
  }
}
