import 'package:dental_patient_management/screens/patinet_page.dart';
import 'package:dental_patient_management/widgets/patient_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
            isScrollable: false,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0)),
                color: Colors.redAccent),
            tabs: <Widget>[
              Tab(
                text: 'Upcoming',
              ),
              Tab(
                text: 'Previous',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            UpcomingPatients(),
            PastPatients(),
          ],
        ),
      ),
    );
  }
}

class UpcomingPatients extends StatefulWidget {
  @override
  _UpcomingPatientsState createState() => _UpcomingPatientsState();
}

class _UpcomingPatientsState extends State<UpcomingPatients> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PatientListItem().listOfPatients(),
    );
  }
}

class PastPatients extends StatefulWidget {
  @override
  _PastPatientsState createState() => _PastPatientsState();
}

class _PastPatientsState extends State<PastPatients> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PatientListItem().listOfPatients(),
    );
  }
}
