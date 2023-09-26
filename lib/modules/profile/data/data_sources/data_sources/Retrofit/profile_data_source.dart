import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';


@RestApi(baseUrl: 'https://api.example.com/profile') // Replace with your profile API base URL
abstract class ProfileDataSourceRetrofit {

  @GET('/user_profile')
  Future<Map<String, dynamic>> fetchUserProfile();
}
