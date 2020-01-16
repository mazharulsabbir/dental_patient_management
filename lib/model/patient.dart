import 'package:dental_patient_management/model/treatment.dart';

class Patient extends Treatment {
  var name, phone, addr;

  Patient(name, phone, addr, treatmentType, nextMeeting,total, paid, due)
      : this.name = name,
        this.phone = phone,
        this.addr = addr,
        super(treatmentType,nextMeeting,total, paid, due);
}
