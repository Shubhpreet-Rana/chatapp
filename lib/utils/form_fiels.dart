import 'package:flutter/material.dart';

class AppTextFormFields extends StatefulWidget {
  const AppTextFormFields({Key? key, required this.controller, this.hint}) : super(key: key);

  final TextEditingController controller;
  final String? hint;


  @override
  State<AppTextFormFields> createState() => _AppTextFormFieldsState();
}

class _AppTextFormFieldsState extends State<AppTextFormFields> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(controller: widget.controller, decoration: InputDecoration(hintText: widget.hint),);
  }
}
