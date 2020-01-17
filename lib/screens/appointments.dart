import 'package:dental_patient_management/model/patient.dart';
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
            UpcomingPatients(items()),
            PastPatients(items()),
          ],
        ),
      ),
    );
  }

  List<Patient> items() {
    List<Patient> patients = new List();
    var patient = new Patient("Mazharul Sabbir", '1825632294',
        'Dhaka Bangladesh', 'Cap', 'Completed', '1000', '1000', '0');

    var patient1 = new Patient("Sabbir", '1825632294', 'Tangail Sadar',
        'Scaling', '19 Jun', '5000', '1000', '4000');

    var patient2 = new Patient("Shuvo", '1234567892', 'Tangail New Bustand',
        'R.C.T', '11 May', '10000', '7000', '3000');

    var patient3 = new Patient("Abdus Sattar", '1827453245', 'Dhaka Bangladesh',
        'Filling', 'Completed', '500', '500', '0');

    var patient4 = new Patient("Sabuj", '1992341245', 'Dhaka Bangladesh',
        'Extraction', '1 Feb', '15000', '10000', '5000');

    var patient5 = new Patient("Sadik", '1873467245', 'Dhaka Bangladesh',
        'Palpectomy', 'Completed', '11000', '11000', '0');

    patients.add(patient3);
    patients.add(patient4);
    patients.add(patient5);
    patients.add(patient);
    patients.add(patient1);
    patients.add(patient2);

    return patients;
  }
}

class UpcomingPatients extends StatefulWidget {
  final List<Patient> upcomingPatients;
  UpcomingPatients(this.upcomingPatients);

  @override
  _UpcomingPatientsState createState() => _UpcomingPatientsState();
}

class _UpcomingPatientsState extends State<UpcomingPatients> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PatientListItem().listOfPatients(widget.upcomingPatients),
    );
  }
}

class PastPatients extends StatefulWidget {
  final List<Patient> previousPatients;
  PastPatients(this.previousPatients);

  @override
  _PastPatientsState createState() => _PastPatientsState();
}

class _PastPatientsState extends State<PastPatients> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PatientListItem().listOfPatients(widget.previousPatients),
    );
  }
}
