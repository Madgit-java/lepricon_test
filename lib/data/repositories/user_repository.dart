import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../constants/contsants.dart';
import '../models/user_model.dart';

class UserRepository {
  Future<List<UserModel>?> getUsers() async {
    final response = await http.get(Uri.parse('${ApiConstants.baseUrl}${ApiConstants.usersEndpoint}'));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((json) => UserModel.fromJson(json)).toList();
    } else {
      throw Exception('Не удалось получить данные с сервера');
    }
  }
}