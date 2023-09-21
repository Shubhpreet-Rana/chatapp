import 'package:chatapp/authentication/data/models/user_model.dart';
import 'package:retrofit/retrofit.dart';
import '../../../domain/entities/user_entity.dart';

@RestApi(baseUrl: 'https://api.example.com/auth') // Replace with your authentication API base URL
abstract class AuthenticationDataSourceRetro {

  @POST('/login')
  Future<UserModel> loginUser(@Body() Map<String, dynamic> credentials);

  @POST('/signup')
  Future<UserModel> signupUser(@Body() Map<String, dynamic> userData);
}
