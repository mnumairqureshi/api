import 'dart:convert';

import 'package:http/http.dart' as http;

getUserById() {
  var response = http.get(Uri.https("jsonplaceholder.typicode.com", "users/1"));
  // var jsondata = jsonDecode(response.body);
}
