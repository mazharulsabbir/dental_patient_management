import 'package:flutter/material.dart';

class AddNewPatient extends StatefulWidget {
  @override
  AddNewPatientState createState() => AddNewPatientState();
}

class AddNewPatientState extends State<AddNewPatient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Patient'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Mobile'),
            ),
          ],
        ),
      ),
    );
  }
}
