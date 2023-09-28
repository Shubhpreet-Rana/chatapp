
import 'package:chatapp/modules/authentication/data/models/user_model.dart';

abstract class AuthenticationDataSource {
  Future<UserModel?> loginUser({required String email, required String password});
  Future<UserModel?> signupUser({required String username,required String email, required String password});
  Future<bool> exists({required String username,required String email});
}