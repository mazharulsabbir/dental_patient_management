import 'package:flutter/material.dart';
import 'model/patient.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dental Care',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      home: MyHomePage(title: 'Sheba Dental Care'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
        'Dhaka Bangladesh', 'Cap', 'Completed', '1000\$', '\$1000', '0\$');
    patients.add(patient);
    patients.add(patient);
    patients.add(patient);
    patients.add(patient);
    patients.add(patient);
    patients.add(patient);
    patients.add(patient);

    return ListView.builder(
        itemCount: patients.length,
        itemBuilder: (BuildContext context, int i) {
          return _patientListItem(patients, i);
        });
  }

  Widget _patientListItem(List<Patient> patients, int p) {
    const double _margin_8 = 8.0;
    const double _margin_4 = 4.0;

    return Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        margin: new EdgeInsets.symmetric(
            horizontal: _margin_8, vertical: _margin_4),
        child: InkWell(
          onTap: () {
            print('Card Tapped');
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
                                patients[p].total.toString(),
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
                                patients[p].paid.toString(),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text('Due', style: TextStyle(fontSize: 10.0)),
                              Text(
                                patients[p].due.toString(),
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
