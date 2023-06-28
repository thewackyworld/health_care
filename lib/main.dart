import 'package:flutter/material.dart';
import './Tasks.dart';
import './Dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(90.0),
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
                Tasks(),
                Dashboard(),
              ]
              ),
          
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                  ),
                  child: Text("Health Up"),
                ),
                ListTile(
                  title: const Text("Contact Us"),
                  onTap: () {
                    // Update app
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text("Log Out"),
                  onTap: () {
                    //sign out user
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),

          ),
      ),
    );
  }
}