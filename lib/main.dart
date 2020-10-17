import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:insta_clone/post.dart';
import 'package:insta_clone/story.dart';

import 'feed.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _pages = [
    Feed(),
    Feed(),
    Feed(),
    Feed(),
    Feed(),
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFEEEEEE),
        brightness: Brightness.light,
        centerTitle: true,
        title: Text(
          "Instagram",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
            icon: Icon(
              Feather.camera,
              color: Colors.black,
            ),
            onPressed: () {}),
        actions: [
          IconButton(
              icon: Icon(
                Feather.tv,
                color: Colors.black,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                FontAwesome.send_o,
                color: Colors.black,
              ),
              onPressed: () {}),
        ],
      ),
      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentPage,
          onTap: (pageIndex) {
            setState(() {
              currentPage = pageIndex;
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
          ]),
    );
  }
}
