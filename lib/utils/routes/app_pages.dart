import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../modules/authentication/presentation/binding/authentication_binding.dart';
import '../../modules/authentication/presentation/pages/login_screen.dart';
import '../../modules/authentication/presentation/pages/signup_screen.dart';
import '../../modules/profile/presentation/bindings/profile_bindings.dart';
import '../../modules/profile/presentation/pages/profile_screen.dart';
import 'app_routes.dart';

class AppPages {
  static String initialRoute = AppRoutes.loginPage;

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case AppRoutes.loginPage:
        return GetPageRoute(
          page: () => const LoginScreen(),
          binding: AuthenticationBinding(),
        );
      case AppRoutes.signupPage:
        return GetPageRoute(
            page: () => const SignupScreen(),
            binding: AuthenticationBinding()
        );
      case AppRoutes.profilePage:
        return GetPageRoute(
            page: () => const ProfileScreen(),
            binding: ProfileBindings()
        );
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
