
import 'package:chatapp/modules/authentication/domain/repositories/authentication_data_source.dart';

import '../../models/user_model.dart';


class AuthenticationRepositoryGraphQl implements AuthenticationDataSource{
  @override
  Future<bool> exists({required String username, required String email}) {
    // TODO: implement exists
    throw UnimplementedError();
  }

  @override
  Future<UserModel?> loginUser({required String email, required String password}) {
    // TODO: implement loginUser
    throw UnimplementedError();
  }

  @override
  Future<UserModel?> signupUser({required String username, required String email, required String password}) {
    // TODO: implement signupUser
    throw UnimplementedError();
  }
}
