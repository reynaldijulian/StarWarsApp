import 'package:flutter/material.dart';
import 'package:star_wars_application/models/people_model.dart';
import 'package:star_wars_application/pages/detail_people_page.dart';

class PeopleTile extends StatelessWidget {
  final PeopleModel people;
  PeopleTile(this.people);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Detailpeople(people),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          left: 30,
          right: 30,
          bottom: 30,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/image_profile.png',
                width: 120,
                height: 120,
                fit: BoxFit.scaleDown,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    people.name,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    people.gender,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    people.birthYear != null ? people.birthYear : 'n/a',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'height: ${people.height != null ? people.height : 'n/a'}',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
