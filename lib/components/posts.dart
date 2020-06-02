import 'package:flutter/material.dart';
import 'package:instagram_clone/models/models.dart';
import 'package:flutter_icons/flutter_icons.dart';

Widget posts({
  List<Post> posts,
  double screenWidth,
}) {
  return Container(
    width: screenWidth,
    child: ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: posts.length,
      itemBuilder: (ctx, i) {
        return Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image(
                            image: NetworkImage(posts[i].profilePicture),
                            width: 40,
                            height: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(posts[i].userName),
                      ],
                    ),
                    IconButton(
                      icon: Icon(SimpleLineIcons.options),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),

              FadeInImage(
                image: NetworkImage(posts[i].postImage),
                placeholder: AssetImage("assets/placeholder.png"),
                width: screenWidth,
                fit: BoxFit.cover,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                        onPressed: () {},
                        icon: Icon(FontAwesome.heart_o),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(FontAwesome.comment_o),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(FontAwesome.paper_plane),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(FontAwesome.bookmark_o),
                  ),
                ],
              ),

              Container(
                width: screenWidth,
                margin: EdgeInsets.symmetric(
                  horizontal: 14,
                ),
                child: RichText(
                  softWrap: true,
                  overflow: TextOverflow.visible,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Liked By ",
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        text: "Igor,",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: " Remi,",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: "yana",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: " and",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: " 1263 others",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),

              // caption
              Container(
                width: screenWidth,
                margin: EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 5,
                ),
                child: RichText(
                  softWrap: true,
                  overflow: TextOverflow.visible,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: posts[i].userName,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: " ${posts[i].caption}",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),

              // post date
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 14,
                ),
                alignment: Alignment.topLeft,
                child: Text(
                  "June 2020",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
}
