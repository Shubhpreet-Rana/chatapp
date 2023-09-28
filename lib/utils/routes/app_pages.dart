import 'package:chatapp/modules/user_list/presentation/bindings/user_list_bindings.dart';
import 'package:chatapp/modules/user_list/presentation/pages/user_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../modules/authentication/presentation/binding/authentication_binding.dart';
import '../../modules/authentication/presentation/pages/login_screen.dart';
import '../../modules/authentication/presentation/pages/signup_screen.dart';
import '../../modules/profile/presentation/bindings/profile_bindings.dart';
import '../../modules/profile/presentation/pages/profile_screen.dart';
import 'app_routes.dart';

class AppPages {
  static String initialRoute = AppRoutes.userListPage;

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case AppRoutes.loginPage:
        return GetPageRoute(
          routeName: AppRoutes.loginPage,
          page: () => const LoginScreen(),
          binding: AuthenticationBinding(),
        );
      case AppRoutes.signupPage:
        return GetPageRoute(
            routeName: AppRoutes.signupPage,
            page: () => const SignupScreen(),
            binding: AuthenticationBinding()
        );
      case AppRoutes.profilePage:
        return GetPageRoute(
            routeName: AppRoutes.profilePage,
            page: () => const ProfileScreen(),
            binding: ProfileBindings()
        );
        case AppRoutes.userListPage:
        return GetPageRoute(
            routeName: AppRoutes.userListPage,
            page: () => const UserListScreen(),
            binding: UserListBinding()
        );
      default:
        return _errorRoute(settings);
    }
  }

  static Route<dynamic> _errorRoute(RouteSettings settings) {
    if(settings.name == "/"){
      return GetPageRoute(
        routeName: AppRoutes.loginPage,
        page: () => const LoginScreen(),
        binding: AuthenticationBinding(),
      );
    }
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
