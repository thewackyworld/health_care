import 'package:flutter/material.dart';
import './Firstscreen.dart';
import './Secondscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: AppBar(
            backgroundColor: Colors.redAccent,
            elevation: 0,
            bottom: TabBar(
              labelColor: Colors.redAccent,
              unselectedLabelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                color: Colors.white,
                ),
              tabs: [
                Tab(child: Align(
                  alignment: Alignment.center,
                  child: Text("Tasks"),
                ),),
                Tab(child: Align(
                  alignment: Alignment.center,
                  child: Text("Dashboard"),
                ),),
              ],
            ),
            ),
          ),
            body: TabBarView(
              children: [
                Firstscreen(),
                Secondscreen(),
              ]
              ),
          ),
      ),
    );
  }
}