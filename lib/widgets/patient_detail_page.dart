import 'package:dental_patient_management/model/patient.dart';
import 'package:flutter/material.dart';

class PatientDetailPage extends StatelessWidget {
  final Patient _patient;
  PatientDetailPage(this._patient);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          _patient.name,
        ),
      ),
      // body: NestedScrollView(
      //   headerSliverBuilder: (BuildContext context, bool innerBoxScroll) {
      //     return <Widget>[
      //       SliverAppBar(
      //         expandedHeight: 200.0,
      //         floating: false,
      //         pinned: true,
      //         flexibleSpace: FlexibleSpaceBar(
      //           centerTitle: true,
      //           title: Text(
      //             _patient.name,
      //           ),
      //           // background: Image.asset(
      //           //   "man.png",
      //           //   fit: BoxFit.cover,
      //           // )
      //         ),
      //       )
      //     ];
      //   },
      //   body: DetailOfPatient(_patient),
      // ),
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
