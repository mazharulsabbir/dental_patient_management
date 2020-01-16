import 'package:dental_patient_management/model/patient.dart';
import 'package:dental_patient_management/widgets/patient_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PatientListPage extends StatefulWidget {
  @override
  _PatientListPageState createState() => _PatientListPageState();
}

class _PatientListPageState extends State<PatientListPage> {
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
      body: _listOfPatients(),
    );
  }

  Widget _listOfPatients() {    
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

    return ListView.builder(
        itemCount: patients.length,
        itemBuilder: (BuildContext context, int i) {
          return _patientListItem(patients, i);
        });
  }

  Widget _patientListItem(List<Patient> patients, int p) {
    const double _margin_8 = 8.0;
    const double _margin_4 = 4.0;

    final String _currency = '\৳';

    // final numberFormat = new NumberFormat('##,###.##');

    return Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        margin: new EdgeInsets.symmetric(
            horizontal: _margin_8, vertical: _margin_4),
        child: InkWell(
          onTap: () {
            //open detail page activity/page
            Navigator.push(
                this.context,
                MaterialPageRoute(
                    builder: (context) => PatientDetailPage(patients[p])));
            print('Tapped $p : ${patients[p].name}');
          },
          child: Container(
            margin: EdgeInsets.only(
                top: _margin_4,
                bottom: _margin_4,
                left: _margin_8,
                right: _margin_8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(_margin_8),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            patients[p].name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.0),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                '${patients[p].total} $_currency',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text('Total', style: TextStyle(fontSize: 10.0))
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Divider(
                        height: 1.0,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Paid', style: TextStyle(fontSize: 10.0)),
                              Text(
                                '$_currency ${patients[p].paid}',
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text('Due', style: TextStyle(fontSize: 10.0)),
                              Text(
                                '${patients[p].due} $_currency',
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Treatment',
                                  style: TextStyle(fontSize: 10.0)),
                              Text(
                                patients[p].treatment.toString(),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text('Next Meeting',
                                  style: TextStyle(fontSize: 10.0)),
                              Text(
                                patients[p].nextMeeting.toString(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: _margin_8, bottom: _margin_8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Mobile', style: TextStyle(fontSize: 10.0)),
                          Text(
                            patients[p].phone.toString(),
                          ),
                        ],
                      ),
                      Icon(Icons.navigate_next)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
