import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/posttile.dart';
import '../components/yettocomepagewidget.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "/";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> _pages = [
    PostTile(),
    YetToImplement(),
    YetToImplement(),
    YetToImplement(),
    YetToImplement(),
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          centerTitle: true,
          title: Text("Instagram",
              style: GoogleFonts.pacifico(
                  textStyle: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w200,
              ))),
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
                FontAwesome.paper_plane_o,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: _pages[currentPage],

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentPage,
          onTap: (i) {
            setState(() {
              currentPage = i;
            });
          },
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Foundation.home), title: Text("Feed")),
            BottomNavigationBarItem(
                icon: Icon(Feather.search), title: Text("Search")),
            BottomNavigationBarItem(
                icon: Icon(Feather.plus_square), title: Text("Upload")),
            BottomNavigationBarItem(
                icon: Icon(Feather.heart), title: Text("Likes")),
            BottomNavigationBarItem(
                icon: Icon(Feather.user), title: Text("Account")),
          ],
        ),
      ),
    );
  }
}
