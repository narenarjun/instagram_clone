import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/posttile.dart';

class HomePage extends StatelessWidget {
  static const String routeName = "/";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          centerTitle: true,
          title: Text(
            "Instagram",
            style: GoogleFonts.pacifico(
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w200,
              )
            )
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Feather.camera,
              color: Colors.black,
            ),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(
                Feather.tv,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesome.paper_plane,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.zero,
          margin: EdgeInsets.zero,
          child: Center(
            child: PostTile(),
          ),
        ),
      ),
    );
  }
}
