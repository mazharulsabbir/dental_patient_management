import 'package:flutter/material.dart';
class Earnings extends StatefulWidget {
  @override
  _EarningsState createState() => _EarningsState();
}

class _EarningsState extends State<Earnings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.ac_unit),
          onPressed: () {
            print('Unit Pressed');
          },
        ),
      ),
      
    );
  }
}