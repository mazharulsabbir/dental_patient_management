import 'package:flutter/material.dart';

class DoctorAppointment extends StatefulWidget {
  @override
  _DoctorAppointmentState createState() => _DoctorAppointmentState();
}

class _DoctorAppointmentState extends State<DoctorAppointment> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Appointments'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.ac_unit),
            onPressed: () {
              print('Unit Pressed');
            },
          ),
          
          bottom: TabBar(
            isScrollable: true,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(8.0),topRight: Radius.circular(8.0)),
              color: Colors.redAccent
            ),
            tabs: <Widget>[
              Tab(
                text: 'Upcoming',
              ),
              Tab(
                text: 'Past',
              )
            ],
          ),          
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.local_offer),
            Icon(Icons.receipt),
          ],
        ),
      ),
    );
  }
}
