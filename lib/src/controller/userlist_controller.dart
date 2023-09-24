import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:userlist_modalpopup/src/model/userdetails_model.dart';

Future<List<UserDetailsMOdel>> fetchUsers() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

  if (response.statusCode == 200) {
    List<dynamic> data = json.decode(response.body);
    List<UserDetailsMOdel> users = data.map((e) {
      return UserDetailsMOdel.fromJson(e);
    }).toList();
    return users;
  } else {
    throw Exception('Failed to load users');
  }
}
