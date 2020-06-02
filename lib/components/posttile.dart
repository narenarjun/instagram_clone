import 'package:flutter/material.dart';

import '../constants/appcontants.dart';
import 'stories.dart';
import 'posts.dart';

class PostTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double srnWidth = MediaQuery.of(context).size.width;
    print(srnWidth);
    return Container(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Divider(),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Stories",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "Watch All",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),

// * stories goes here!!!
            stories(
              screenWidth: srnWidth,
              storiesList: storiesData,
            ),
//  * posts goes here !!!
            posts(
              posts: postsData,
              screenWidth: srnWidth,
            ),
          ],
        ),
      ),
    );
  }
}
