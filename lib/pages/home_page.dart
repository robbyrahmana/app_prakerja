import 'package:app_prakerja/core/consts.dart';
import 'package:app_prakerja/core/flutter_icons.dart';
import 'package:app_prakerja/delegates/header_delegate.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        _buildHeader(),
        SliverToBoxAdapter(
          child: Column(
            children: <Widget>[
              _buildTips(
                "Apa itu Prakerja?",
                "Ngapain si ada ginian?",
                FlutterIcons.help,
                Appcolors.purpleColor,
                Appcolors.purpleColor.withAlpha(50),
              ),
              SizedBox(height: 16),
              _buildTips(
                "Cara join Prakerja?",
                "Alur join program ini",
                FlutterIcons.article_alt,
                Appcolors.redColor,
                Appcolors.redColor.withAlpha(50),
              ),
              SizedBox(height: 16),
              _buildTips2("Cara dapat uang intensif?"),
              SizedBox(height: 16),
              _buildTips2("Gimana prakteknya?"),
              SizedBox(height: 16),
              _buildTips2("Semua bisa lewat video?"),
              SizedBox(height: 200),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildTips(String text1, String text2, IconData icon, Color iconColor,
      Color backgroundColor) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 1,
            blurRadius: 3,
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.all(16),
      child: Row(
        children: <Widget>[
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.all(
                Radius.circular(100),
              ),
            ),
            child: Container(
              child: Center(
                child: Icon(
                  icon,
                  color: iconColor,
                  size: 25,
                ),
              ),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  text1,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  text2,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            FlutterIcons.right_open,
            color: Colors.black87,
          ),
        ],
      ),
    );
  }

  Widget _buildTips2(String text) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 1,
            blurRadius: 3,
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.all(16),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black87,
              ),
            ),
          ),
          Icon(
            FlutterIcons.right_open,
            color: Colors.black87,
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return SliverPersistentHeader(
      floating: true,
      pinned: true,
      delegate: HeaderDelegate(
        stackPaddingTop: 175,
        titlePaddingTop: 50,
        title: RichText(
          text: TextSpan(
            text: "Informasi ",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: "& FAQ",
                style: TextStyle(
                  color: Colors.white38,
                ),
              ),
            ],
          ),
        ),
        subTitle: Text(
          "Berikut informasi & jawaban terpopuler",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        stackChild: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 1,
                blurRadius: 3,
              ),
            ],
          ),
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Cari apapun disini!",
              hintStyle: TextStyle(color: Colors.black38),
              contentPadding: EdgeInsets.all(16),
              suffixIcon: Icon(
                FlutterIcons.search,
                color: Appcolors.purpleColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
