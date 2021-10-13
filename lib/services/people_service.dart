import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:star_wars_application/models/people_model.dart';
import 'package:star_wars_application/providers/db_provider.dart';

class PeopleService {
  String baseUrl = 'https://swapi.dev/api';

  Future<List<PeopleModel>> getAllPeoples() async {
    var url = '$baseUrl/people';
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(url, headers: headers);

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['results'];
      List<PeopleModel> peoples = [];

      for (var item in data) {
        peoples.add(PeopleModel.fromJson(item));
      }
      return peoples;
    } else {
      throw Exception('Gagal Get Peoples!');
    }
  }
}
