import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Network {
  //buat laptop
  // final String _url = 'http://127.0.0.1:8000/virtualtourapi/';
  //buat AVD
  final String _url = 'http://10.0.2.2:8000/virtualtourapi/';
  // 192.168.1.2 is my IP, change with your IP address
  var token;

  _getToken() async {
    final localStorage = await FlutterSecureStorage();
    token = localStorage.read(key: 'jwt');
  }

  auth(data, apiURL) async {
    var fullUrl = _url + apiURL;
    return await http.post(Uri.parse(fullUrl),
        body: jsonEncode(data), headers: _setHeaders());
  }

  getData(apiURL) async {
    var fullUrl = _url + apiURL;
    await _getToken();
    return await http.get(
      Uri.parse(fullUrl),
      headers: _setHeaders(),
    );
  }

  _setHeaders() => {
        'Content-type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      };
}