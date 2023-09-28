import 'package:chatapp/utils/app_themes/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app_text.dart';

class ApiToast {
  // dynamic showToast(
  //     {required dynamic data, bool? showSuccess = true, bool? showError = true, required String title}) {
  //   Get.snackbar(title, data!.message,
  //       colorText: data!.status == true ? Colors.green : Colors.red,
  //       snackPosition: SnackPosition.BOTTOM);
  // }

  Color? backgroundColor;
  Color? titleColor;
  Color? messageColor;
  final String title;
  final String message;
  final bool? showSuccess;
  final bool? showError;

  ApiToast(
      {required this.title, required this.message,  this.showError,  this.showSuccess}) {}

  ApiToast.notice(
      {required this.title, required this.message,  this.showError,  this.showSuccess}) {
    backgroundColor = Get.theme.colorScheme.tertiaryContainer;
    titleColor = Get.theme.colorScheme.tertiary;
    messageColor = Get.theme.colorScheme.tertiary;
    call();
  }

  ApiToast.error(
      {required this.title, required this.message,  this.showError,  this.showSuccess}) {
    backgroundColor = Get.theme.colorScheme.errorContainer;
    titleColor = Get.theme.colorScheme.error;
    messageColor = Get.theme.colorScheme.error;
    call();
  }

  ApiToast.success(
      {required this.title, required this.message,  this.showError,  this.showSuccess}) {
    backgroundColor = Get.theme.extension<CustomColors>()!.successContainer;
    titleColor = Get.theme.extension<CustomColors>()!.success;
    messageColor = Get.theme.extension<CustomColors>()!.success;
    call();
  }

  call() {
    Get.snackbar(
      "t", "tt",
      titleText: AppText(title, color: titleColor,),
      messageText: AppText.small(message, color: messageColor),
      duration: const Duration(seconds: 2),
      backgroundColor: backgroundColor,
    );
  }
}