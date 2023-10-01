import 'package:flutter/services.dart';

class EmailInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // Perform formatting or validation here
    // For example, you can ensure that newValue is a valid email format
    final validEmailPattern =
    RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');

    if (validEmailPattern.hasMatch(newValue.text)) {
      return newValue; // Input is a valid email format
    } else {
      // Input is not a valid email format, you can choose to handle it differently
      // For example, prevent the invalid input by returning the oldValue
      return oldValue;
    }
  }
}
