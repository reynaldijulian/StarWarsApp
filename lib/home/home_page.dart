import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_wars_application/providers/db_provider.dart';
import 'package:star_wars_application/providers/people_provider.dart';
import 'package:star_wars_application/widgets/people_tile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    PeopleProvider peopleProvider = Provider.of<PeopleProvider>(context);

    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 30,
          right: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Hallo',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            Container(
              height: 30,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              child: Container(
                width: 200,
                height: 50,
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 5,
                ),
                child: TextFormField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'Search',
                  ),
                ),
              ),
            ),
            Container(
              width: 35,
              height: 35,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cart');
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget peoples() {
      return Container(
        margin: EdgeInsets.only(
          top: 14,
        ),
        child: Column(
          children: peopleProvider.peoples
              .map(
                (people) => PeopleTile(people),
              )
              .toList(),
        ),
      );
    }

    return ListView(
      children: [
        header(),
        peoples(),
        //listProducts(),
      ],
    );
  }
}
