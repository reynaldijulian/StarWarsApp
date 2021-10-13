import 'package:star_wars_application/models/people_model.dart';

class People1Model {
  //int count;
  //String next;
  //String previous;
  List<PeopleModel> results;

  People1Model({this.results});

  People1Model.fromJson(Map<String, dynamic> json) {
    //count = json['count'];
    //next = json['next'];
    //previous = json['previous'];
    results = json['results']
        .map<PeopleModel>((gallery) => PeopleModel.fromJson(gallery))
        .toList();
  }

  Map<String, dynamic> toJson() {
    return {
      //'count': count,
      //'next': next,
      //'previous': previous,
      'results': results.map((gallery) => gallery.toJson()).toList(),
    };
  }
}
