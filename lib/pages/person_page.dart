import 'package:app_prakerja/core/consts.dart';
import 'package:app_prakerja/core/flutter_icons.dart';
import 'package:app_prakerja/delegates/header_delegate.dart';
import 'package:flutter/material.dart';

class PersonPage extends StatefulWidget {
  @override
  _PersonPageState createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        _buildHeader(),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Kelas yang diikuti",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Appcolors.styleColor,
                  ),
                ),
              ),
              SizedBox(height: 16),
              _buildPelatihan("Pelatihan Ojek Online", 100),
              SizedBox(height: 16),
              _buildPelatihan("Sukses Buka Sampingan", 30),
              SizedBox(height: 16),
              _buildPelatihan("Trik Bukan Usaha", 10),
              SizedBox(height: 250),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildPelatihan(String title, double value) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
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
      child: Column(
        children: <Widget>[
          LinearProgressIndicator(
            backgroundColor: value > 70
                ? Colors.green.withOpacity(.3)
                : Appcolors.redColor.withOpacity(.3),
            value: value / 100,
            valueColor: AlwaysStoppedAnimation(
              value > 70 ? Colors.green : Appcolors.redColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: <Widget>[
                          Text(
                            "${value.toInt()}% ${value == 100 ? 'LULUS' : 'BERLJALAN'}",
                            style: TextStyle(
                              fontSize: 16,
                              color: value > 70 ? Colors.green : Colors.orange,
                            ),
                          ),
                          SizedBox(width: 16),
                          Text(
                            "Rp 200.000",
                            style: TextStyle(
                              fontSize: 16,
                              color: Appcolors.redColor,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Icon(
                  FlutterIcons.right_open,
                  color: Colors.black87,
                ),
              ],
            ),
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
        stackPaddingTop: 150,
        flexibleSpace: 350,
        titlePaddingTop: 50,
        title: Text(
          "Mulyono Sujiwo",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        subTitle: Text(
          "Klothok, Plumpang, Tuban",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Appcolors.redColor,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          margin: EdgeInsets.only(right: 16),
          child: Center(
            child: Icon(
              FlutterIcons.user,
              color: Colors.white,
            ),
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
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Text(
                "Saldo dana pelatihan",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Rp 400.000",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Appcolors.styleColor,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16),
                height: 1,
                width: double.infinity,
                color: Appcolors.purpleColor.withOpacity(.5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Saldo dapat dicairkan",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "Rp 100.000",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Appcolors.styleColor,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
