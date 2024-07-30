import 'dart:convert';

import'package:http/http.dart' as http;
import 'package:userinfo_assignment/models/info.dart';

class UserData {
  final String apiUrl = 'https://jsonplaceholder.typicode.com/users';

Future<List<Info>> fetchInfo() async {
  final response = await http.get(Uri.parse(apiUrl));
  if(response.statusCode == 200){
    List<dynamic> jsonResponse = json.decode(response.body);
    //print(jsonResponse);
    
    return jsonResponse.map((info) => Info.fromJson(info)).toList();
  }else{
    throw Exception(
      'Failed to load User Information'
    );
  }
}
}