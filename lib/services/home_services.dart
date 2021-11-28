import 'dart:convert';

import 'package:api/model/home_model.dart';
import 'package:flutter/gestures.dart';
import 'package:http/http.dart' as http;

getuser() async {
  var response =
      await http.get(Uri.https("jsonplaceholder.typicode.com", "users"));
  var jsondata = jsonDecode(response.body);

  // print(jsondata);

  List<HomeModel> users = [];

  for (var i in jsondata) {
    HomeModel user = HomeModel(
        id: i['id'], name: i['name'], username: i['username'], email: '');
    users.add(user);
  }
  return users;
}
