import 'package:flutter/material.dart';
import 'package:star_wars_application/models/people_model.dart';
import 'package:star_wars_application/services/people_service.dart';

class PeopleProvider with ChangeNotifier {
  List<PeopleModel> _peoples = [];

  List<PeopleModel> get peoples => _peoples;

  set peoples(List<PeopleModel> peoples) {
    _peoples = peoples;
    notifyListeners();
  }

  Future<void> getAllPeoples() async {
    try {
      List<PeopleModel> peoples = await PeopleService().getAllPeoples();
      _peoples = peoples;
    } catch (e) {
      print(e);
    }
  }
}
