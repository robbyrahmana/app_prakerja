import 'package:app_prakerja/core/consts.dart';
import 'package:app_prakerja/core/flutter_icons.dart';
import 'package:app_prakerja/pages/home_page.dart';
import 'package:app_prakerja/pages/person_page.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var currrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget display;
    if (currrentIndex == 0) {
      display = HomePage();
    } else if (currrentIndex == 2) {
      display = PersonPage();
    }

    return Scaffold(
      body: Stack(
        children: <Widget>[
          display,
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0),
                    Colors.white,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currrentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Appcolors.purpleColor,
        unselectedItemColor: Appcolors.purpleColor.withAlpha(150),
        onTap: (index) {
          setState(() {
            currrentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            title: Text("data"),
            icon: Icon(FlutterIcons.home),
          ),
          BottomNavigationBarItem(
            title: Text("data"),
            icon: Container(),
          ),
          BottomNavigationBarItem(
            title: Text("data"),
            icon: Icon(FlutterIcons.user),
          ),
        ],
      ),
      floatingActionButton: Transform.rotate(
        angle: math.pi / 4,
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Appcolors.purpleColor.withAlpha(150),
                Appcolors.purpleColor
              ],
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Transform.rotate(
            angle: -math.pi / 4,
            child: Icon(
              FlutterIcons.home,
              color: Colors.white,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
