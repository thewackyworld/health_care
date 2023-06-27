import 'package:flutter/material.dart';

class Secondscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("It is a second layout tab, which is responsible for taking pictures from your mobile.",
        style: TextStyle(fontSize: 35.0),        
        ),
      ),
    );
  }
}

// DefaultTabController(
//   length: 2,
//   child: Scaffold(
//     appBar: AppBar(
//       bottom: TabBar(
//         tabs: [
//           Tab(icon: Icon(Icons.directions_car)),
//           Tab(icon: Icon(Icons.directions_bike))
//         ],
//         )
//       ),
//   )
// );