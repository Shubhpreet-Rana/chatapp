import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextFormFields extends StatefulWidget {
  const AppTextFormFields({Key? key, required this.controller, this.hint, this.inputFormatter = const []}) : super(key: key);

  final TextEditingController controller;
  final String? hint;
final List<TextInputFormatter>? inputFormatter;

  @override
  State<AppTextFormFields> createState() => _AppTextFormFieldsState();
}

class _AppTextFormFieldsState extends State<AppTextFormFields> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(controller: widget.controller, inputFormatters: widget.inputFormatter,decoration: InputDecoration(hintText: widget.hint),);
  }
}
