import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app_text.dart';

class AppToast {
  Color? backgroundColor;
  Color? titleColor;
  Color? messageColor;
  final String title;
  final String message;

  AppToast({required this.title, required this.message}) {}

  AppToast.notice({required this.title, required this.message}) {
    backgroundColor = Get.theme.colorScheme.tertiaryContainer;
    titleColor = Get.theme.colorScheme.tertiary;
    messageColor = Get.theme.colorScheme.tertiary;
    call();
  }

  AppToast.error({required this.title, required this.message}) {
    backgroundColor = Get.theme.colorScheme.errorContainer;
    titleColor = Get.theme.colorScheme.error;
    messageColor = Get.theme.colorScheme.error;
    call();
  }

  AppToast.success({required this.title, required this.message}) {
    backgroundColor = Get.theme.colorScheme.secondaryContainer;
    titleColor = Get.theme.colorScheme.secondary;
    messageColor = Get.theme.colorScheme.secondary;
    call();
  }

  call() {
    Get.snackbar(
      "t","tt",
      titleText: AppText(title, color: titleColor,),
      messageText: AppText.small(message, color: messageColor),
      duration: const Duration(seconds: 5),
      backgroundColor: backgroundColor,
    );


  }
}
