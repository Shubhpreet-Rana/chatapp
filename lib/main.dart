import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';
import 'utils/app_themes/app_theme.dart';
import 'utils/routes/app_pages.dart';
import 'utils/routes/app_routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: AppTheme.lightTheme.copyWith(scaffoldBackgroundColor: Colors.white),
        initialRoute: AppRoutes.initialRoutes,
        onGenerateRoute: AppPages.generateRoute,);

  }
}

