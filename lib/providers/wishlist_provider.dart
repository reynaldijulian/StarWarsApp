import 'package:flutter/material.dart';
import 'package:star_wars_application/models/people_1_model.dart';
import 'package:star_wars_application/models/people_model.dart';

class WishlistProvider with ChangeNotifier {
  List<PeopleModel> _wishlist = [];

  List<PeopleModel> get wishlist => _wishlist;

  set wishlist(List<PeopleModel> wishlist) {
    _wishlist = wishlist;
    notifyListeners();
  }

  setPeople(PeopleModel people) {
    if (!isWishlist(people)) {
      _wishlist.add(people);
    } else {
      _wishlist.removeWhere((element) => element.url == people.url);
    }

    notifyListeners();
  }

  isWishlist(PeopleModel people) {
    if (_wishlist.indexWhere((element) => element.url == people.url) == -1) {
      return false;
    } else {
      return true;
    }
  }
}
