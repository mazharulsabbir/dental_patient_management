import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:intl/intl.dart';

class AddNewPatient extends StatefulWidget {
  @override
  AddNewPatientState createState() => AddNewPatientState();
}

class AddNewPatientState extends State<AddNewPatient> {
  String _nextMeetingDate = 'Completed';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Patient'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Patient Info",
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 8.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Name',
                      border: OutlineInputBorder(),
                    ),
                    textCapitalization: TextCapitalization.words,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Mobile',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Address',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Text(
                    "Treatment Type",
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  RadioButtonGroup(
                    labels: <String>[
                      "Scaling",
                      "Filling",
                      "R.C.T",
                      "Cap",
                      "Extraction",
                      "Palcectomy",
                    ],
                    picked: 'Scaling',                    
                    onSelected: (String selected) => print(selected),
                    orientation: GroupedButtonsOrientation.VERTICAL,
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Text(
                    "Payment Info",
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Total Amount',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Paid',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Text(
                    'Choose Next Meeting Date',
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('$_nextMeetingDate'),
                      IconButton(
                        onPressed: () {
                          DatePicker.showDateTimePicker(context,
                              showTitleActions: true, onChanged: (date) {
                            print('change $date');
                          }, onConfirm: (date) {
                            var formateDate =
                                new DateFormat("MMM-dd GGG hh:mm aaa");
                            print('confirm ${formateDate.format(date)}');
                            setState(
                              () {
                                _nextMeetingDate =
                                    '${formateDate.format(date)}';
                              },
                            );
                          },
                              currentTime: DateTime.now(),
                              locale: LocaleType.en);
                        },
                        icon: Icon(Icons.date_range),
                      ),
                    ],
                  ),
                  
                  SizedBox(
                    height: 50.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {},
                        child: Text('Add New Patient'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
