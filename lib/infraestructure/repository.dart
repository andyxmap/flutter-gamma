import 'package:bolsa_flutter/infraestructure/dio_client.dart';
import 'package:dio/dio.dart';

import '../models/user.dart';
import '../utils/exceptions.dart';

class UserRepository {
  
  static DioClient client = DioClient(baseUrl: "https://reqres.in/api");

  UserRepository();

  static Future<List<UserModel>> getUsersRequested() async {
    try {
      final response = await client.get("/users");
      print(response.data.runtimeType);
      final users = (response.data['data'] as List)
          .map((e) => UserModel.fromMap(e))
          .toList();
      return users;
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

}
