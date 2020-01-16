import 'package:dental_patient_management/model/patient.dart';
import 'package:flutter/material.dart';

class PatientDetailPage extends StatelessWidget {
  final Patient _patient;
  PatientDetailPage(this._patient);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_patient.name),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            print('Exit from Patient Detail Page');
            Navigator.pop(
                context); //close this activity/page. go back to parent page
          },
        ),
      ),
      body: DetailOfPatient(_patient),
    );
  }
}

class DetailOfPatient extends StatefulWidget {
  final Patient _patient;
  DetailOfPatient(this._patient);
  @override
  _DetailOfPatientState createState() => _DetailOfPatientState();
}

class _DetailOfPatientState extends State<DetailOfPatient> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(widget._patient.name),
      ),
    );
  }
}
