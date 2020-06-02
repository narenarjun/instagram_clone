import 'package:flutter/material.dart';
import 'package:instagram_clone/models/models.dart';

Widget stories({List<Story> storiesList, double screenWidth}) {
  return Container(
    width: screenWidth,
    margin: EdgeInsets.symmetric(
      vertical: 10,
    ),
    height: 110,
    child: ListView(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      children: storiesList.map((story) {
        return Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70),
                border: Border.all(
                  width: 3,
                  color: Colors.pinkAccent,
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(
                  2,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(70),
                  child: Image(
                    image: NetworkImage(story.storyImage),
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(story.name),
          ],
        );
      }).toList(),
    ),
  );
}
