import 'package:chatapp/utils/app_themes/color_schemes.dart';
import 'package:chatapp/utils/app_themes/custom_color.dart';
import 'package:dynamic_color/dynamic_color.dart';
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
    return DynamicColorBuilder(
        builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
          ColorScheme lightScheme;
          ColorScheme darkScheme;

          if (lightDynamic != null && darkDynamic != null) {
            lightScheme = lightDynamic.harmonized();
            lightCustomColors = lightCustomColors.harmonized(lightScheme);

            // Repeat for the dark color scheme.
            darkScheme = darkDynamic.harmonized();
            darkCustomColors = darkCustomColors.harmonized(darkScheme);
          } else {
            // Otherwise, use fallback schemes.
            lightScheme = lightColorScheme;
            darkScheme = darkColorScheme;
          }

          return GetMaterialApp(
            title: 'Flutter Demo',
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: ThemeMode.light,
            initialRoute: AppRoutes.initialRoutes,
            onGenerateRoute: AppPages.generateRoute,);
        }
    );

  }
}

