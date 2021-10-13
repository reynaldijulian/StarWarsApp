// @dart=2.9

import 'package:flutter/material.dart';

import '../theme.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: secondaryColor,
        centerTitle: true,
        title: Text(
          'Favorite',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          child: ListView(
            children: [],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
