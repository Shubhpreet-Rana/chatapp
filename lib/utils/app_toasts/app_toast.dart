import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';

import '../app_text.dart';
import '../app_themes/custom_color.dart';

class AppToast extends CustomToast {
  Color? backgroundColor;
  Color? titleColor;
  Color? messageColor;
  final String title;
  final String message;

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
    backgroundColor = Get.theme.extension<CustomColors>()!.successContainer;
    titleColor = Get.theme.extension<CustomColors>()!.success;
    messageColor = Get.theme.extension<CustomColors>()!.success;
    callTimed();
  }

  AppToast.validationError({required this.title, required this.message}) {
    backgroundColor = Get.theme.colorScheme.errorContainer;
    titleColor = Get.theme.colorScheme.error;
    messageColor = Get.theme.colorScheme.error;
    call();
  }

  callTimed() {
    SchedulerBinding.instance!.addPostFrameCallback((_) {
      Get.snackbar(
        "t",
        "tt",
        titleText: AppText(
          title,
          color: titleColor,
        ),
        messageText: AppText.small(message, color: messageColor),
        duration: const Duration(seconds: 2),
        backgroundColor: backgroundColor,
      );
    });

  }

  call() {
    SchedulerBinding.instance!.addPostFrameCallback((_) {
      Get.snackbar(
        "t",
        "tt",
        titleText: AppText(
          title,
          color: titleColor,
        ),
        messageText: AppText.small(message, color: messageColor),
        duration: null,
        backgroundColor: backgroundColor,
      );
    });

  }
}

class CustomToast {
  CustomToast() {
    debugPrint("${Get.isSnackbarOpen}");
    Get.closeAllSnackbars();
    // Get.back(closeOverlays: true);

  }
}
