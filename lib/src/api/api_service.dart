import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:worksample/src/users/user.dart';
import 'package:http/http.dart' as http;

final apiServiceProvider = Provider<ApiService>((ref) => ApiService());

class ApiService {
  String url =
      'https://dummyjson.com/users?limit=10&select=id,firstName,lastName,image,email,phone,university';

  Future<List<User>> getUsers() async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['users'];
      return result.map(((userjson) => User.fromJson(userjson))).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
