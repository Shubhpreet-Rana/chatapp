
import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class InternetConnectivity {

 static ValueNotifier<bool> isConnected = ValueNotifier<bool>(false);

 static StreamSubscription<ConnectivityResult>? connectionSubscription;

 void connectivityService(){

  connectionSubscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
   if(result == ConnectivityResult.none){
    isConnected.value = false;
   }else{
    isConnected.value = true;
   }
   });
  }
}