import 'package:dental_patient_management/model/payment.dart';

class Treatment extends Payment {
  String treatment;
  String nextMeeting;
  Treatment(this.treatment,this.nextMeeting, total, paid, due) : super(total, paid, due);
}
