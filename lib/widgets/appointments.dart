import 'package:flutter/material.dart';

class DoctorAppointment extends StatefulWidget {
  @override
  _DoctorAppointmentState createState() => _DoctorAppointmentState();
}

class _DoctorAppointmentState extends State<DoctorAppointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appointments'),
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