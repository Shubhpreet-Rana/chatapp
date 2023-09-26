import '../entities/user_entity.dart';
import '../repositories/authentication_repositary.dart';

class RegisterUserCase{
  RegisterUserCase ({required this.repository});

  final AuthenticationRepository repository;
  Future<UserEntity?> execute({required String username , required String email , required String password})async{
    return await repository.signup(username, email, password);
  }
}