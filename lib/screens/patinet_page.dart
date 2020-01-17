import 'package:dental_patient_management/model/patient.dart';
import 'package:dental_patient_management/widgets/patient_list_item.dart';
import 'package:flutter/material.dart';

class PatientListPage extends StatefulWidget {
  @override
  _PatientListPageState createState() => _PatientListPageState();
}

class _PatientListPageState extends State<PatientListPage> {
  List<Patient> items(){
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

    patients.add(patient);
    patients.add(patient1);
    patients.add(patient2);
    patients.add(patient3);
    patients.add(patient4);
    patients.add(patient5);

    return patients;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patients'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.ac_unit),
          onPressed: () {
            print('Unit Pressed');
          },
        ),
      ),
      body: PatientListItem().listOfPatients(items()),
    );
  }
}
