import 'package:dental_patient_management/screens/patient_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:dental_patient_management/model/patient.dart';

class PatientListItem {
  Widget listOfPatients(List<Patient> patients) {
    return ListView.builder(
        itemCount: patients.length,
        itemBuilder: (BuildContext context, int i) {
          return patientListItem(context, patients, i);
        });
  }

  Widget patientListItem(BuildContext context, List<Patient> patients, int p) {
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
                context,
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
