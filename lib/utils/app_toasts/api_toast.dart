import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApiToast{
 dynamic  showToast({required dynamic data, bool? showSuccess = true , bool? showError = true , required String title}){
   Get.snackbar(title, data!.message,colorText: data!.status== true?Colors.green:Colors.red,snackPosition: SnackPosition.BOTTOM);
  }
}