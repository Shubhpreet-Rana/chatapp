import 'package:chatapp/authentication/presentation/pages/login_screen.dart';
import 'package:chatapp/authentication/presentation/pages/signup_screen.dart';
import 'package:chatapp/profile/presentation/bindings/profile_bindings.dart';
import 'package:chatapp/profile/presentation/pages/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../authentication/presentation/binding/authentication_binding.dart';
import 'app_routes.dart';

class AppPages {
  static String initialRoute = AppRoutes.homeTabView;

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
debugPrint("String Arguments ${settings.name}  ${args}");
    switch (settings.name) {
      case AppRoutes.loginPage:
        return GetPageRoute(
          page: () => LoginScreen(),
          binding: AuthenticationBinding(),
        );
      case AppRoutes.signupPage:
        return GetPageRoute(
            page: () => const SignupScreen(),
            binding: AuthenticationBinding());
        case AppRoutes.profilePage:
        return GetPageRoute(
            page: () => const ProfileScreen(),
            binding: ProfileBindings());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return GetPageRoute(
      page: () => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Route not found.'),
        ),
      ),
    );
  }
}
