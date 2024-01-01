import 'dart:convert';
import 'dart:developer';

import 'package:fitness_app/model/register_response.dart';
import 'package:http/http.dart' as http;

import '../helper/const.dart';
import '../model/login_response.dart';
import '../model/user_response.dart';

Future<UserResponse> fetchUsers() async {
  var uri = Uri.parse(baseUrl + getUserData);
  final response = await http.get(uri);

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return UserResponse.fromJson(jsonDecode(response.body)[0]);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

Future<LoginResponse> loginUser(
  String email,
  String password,
) async {
  var dataMap = {
    "email": email,
    "password": password,
  };

  var uri = Uri.parse(baseUrl + login);

  final response = await http.post(
    uri,
    body: jsonEncode(dataMap),
    headers: {
      "Content-Type": "application/json",
      "Accept": "application/json",
    },
  );

  log("API URI: ${uri.toString()}");

  log("BODY: $dataMap");

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    log("BODY: ${response.body}");

    var data = jsonDecode(response.body);
    if (data["msg"] != null) {
      log("ALERT MESSAGE ${data["msg"]}");
    }
    return LoginResponse.fromJson(data);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to login');
  }
}

Future<RegisterResponse> registerUser({
  required String firstName,
  required String lastName,
  required String userName,
  required String email,
  required String password,
  required String height,
  required String weight,
  required String age,
  required String gender,
}) async {
  var dataMap = {
    "firstname": firstName,
    "lastname": lastName,
    "username": userName,
    "password": password,
    "age": age,
    "email": email,
    "weight": weight,
    "height": height,
    "gender": gender
  };

  var uri = Uri.parse(baseUrl + register);

  final response = await http.post(
    uri,
    body: jsonEncode(dataMap),
    headers: {
      "Content-Type": "application/json",
      "Accept": "application/json",
    },
  );

  log("API URI: ${uri.toString()}");

  log("BODY: $dataMap");

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    log("BODY: ${response.body}");

    var data = jsonDecode(response.body);
    if (data["msg"] != null) {
      log("ALERT MESSAGE ${data["msg"]}");
    }
    return RegisterResponse.fromJson(data);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to login');
  }
}
