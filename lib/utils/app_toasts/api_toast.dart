import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApiToast{

 dynamic  showToast({required dynamic data, bool? showSuccess = true , bool? showError = true , required String title}){
   if(data!.status== true){
      Get.snackbar(title, data!.message,duration: const Duration(seconds: 2),colorText: Colors.green,snackPosition: SnackPosition.BOTTOM);
    }else{
      Get.snackbar(title, data!.message,duration: const Duration(seconds: 2),colorText: Colors.red,snackPosition: SnackPosition.BOTTOM );
    }
  }
}