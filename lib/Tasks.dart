import 'package:flutter/material.dart';


// screen to show what tasks the algorithm says

class Tasks extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("It is a contact tab, which is responsible for displaying the contacts stored in your mobile",
         style: TextStyle(fontSize: 32.0),
        ),
      ),
    );
  }
}