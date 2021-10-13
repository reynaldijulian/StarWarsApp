import 'package:star_wars_application/models/film_model.dart';
import 'package:star_wars_application/models/people_model.dart';

class VehicleModel {
  String url;
  String name;
  String model;
  String manufacturer;
  String costInCredits;
  double length;
  String maxAtmospheringSpeed;
  int crew;
  int passengers;
  int cargoCapacity;
  String consumables;
  String vehicleClass;
  List<PeopleModel> pilots;
  List<FilmModel> films;
  DateTime created;
  DateTime edited;

  VehicleModel({
    this.url,
    this.name,
    this.model,
    this.manufacturer,
    this.costInCredits,
    this.length,
    this.maxAtmospheringSpeed,
    this.crew,
    this.passengers,
    this.cargoCapacity,
    this.consumables,
    this.vehicleClass,
    this.pilots,
    this.films,
    this.created,
    this.edited,
  });

  VehicleModel.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    name = json['name'];
    model = json['model'];
    manufacturer = json['manufacturer'];
    costInCredits = json['costInCredits'];
    length = double.parse(json['length'].toString());
    maxAtmospheringSpeed = json['maxAtmospheringSpeed'];
    crew = json['crew'];
    passengers = json['passengers'];
    cargoCapacity = json['cargoCapacity'];
    consumables = json['consumables'];
    vehicleClass = json['vehicleClass'];
    pilots = json['pilots']
        .map<PeopleModel>((gallery) => PeopleModel.fromJson(gallery))
        .toList();
    films = json['films']
        .map<FilmModel>((gallery) => FilmModel.fromJson(gallery))
        .toList();
    created = DateTime.parse(json['created']);
    edited = DateTime.parse(json['edited']);
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'name': name,
      'model': model,
      'manufacturer': manufacturer,
      'costInCredits': costInCredits,
      'length': length,
      'maxAtmospheringSpeed': maxAtmospheringSpeed,
      'crew': crew,
      'passengers': passengers,
      'cargoCapacity': cargoCapacity,
      'consumables': consumables,
      'vehicleClass': vehicleClass,
      'pilots': pilots.map((gallery) => gallery.toJson()).toList(),
      'films': films.map((gallery) => gallery.toJson()).toList(),
      'created': created.toString(),
      'edited': edited.toString(),
    };
  }
}
