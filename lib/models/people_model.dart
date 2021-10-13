import 'dart:convert';

import 'package:star_wars_application/models/film_model.dart';
import 'package:star_wars_application/models/starship_mode.dart';
import 'package:star_wars_application/models/vehicle_model.dart';

List<PeopleModel> peopleFromJson(String str) => List<PeopleModel>.from(
    json.decode(str).map((x) => PeopleModel.fromJson(x)));

String peopleToJson(List<PeopleModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PeopleModel {
  String name;
  String height;
  String mass;
  String hairColor;
  String skinColor;
  String eyeColor;
  String birthYear;
  String gender;
  String homeWorld;
  //List<FilmModel> films;
  String species;
  List<VehicleModel> vehicles;
  List<StarshipModel> starships;
  DateTime created;
  DateTime edited;
  String url;

  PeopleModel({
    this.name,
    this.height,
    this.mass,
    this.hairColor,
    this.skinColor,
    this.eyeColor,
    this.birthYear,
    this.gender,
    this.homeWorld,
    //this.films,
    //this.species,
    //this.vehicles,
    //this.starships,
    this.created,
    this.edited,
    this.url,
  });

  PeopleModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    height = json['height'];
    mass = json['url'];
    hairColor = json['hairColor'];
    skinColor = json['skinColor'];
    eyeColor = json['eyeColor'];
    birthYear = json['birthYear'];
    gender = json['gender'];
    homeWorld = json['homeWorld'];
    // films = json['films']
    //     .map<FilmModel>((gallery) => FilmModel.fromJson(gallery))
    //     .toList();
    //species = json['species'];
    // vehicles = json['vehicles']
    //     .map<VehicleModel>((gallery) => VehicleModel.fromJson(gallery))
    //     .toList();
    // starships = json['starships']
    //     .map<StarshipModel>((gallery) => StarshipModel.fromJson(gallery))
    //     .toList();
    created = DateTime.parse(json['created']);
    edited = DateTime.parse(json['edited']);
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'height': height,
      'mass': mass,
      'hairColor': hairColor,
      'skinColor': skinColor,
      'eyeColor': eyeColor,
      'birthYear': birthYear,
      'gender': gender,
      'homeWorld': homeWorld,
      //'films': films.map((gallery) => gallery.toJson()).toList(),
      //'species': species,
      //'vehicles': vehicles.map((gallery) => gallery.toJson()).toList(),
      //'starships': starships.map((gallery) => gallery.toJson()).toList(),
      'created': created.toString(),
      'edited': edited.toString(),
      'url': url,
    };
  }
}
