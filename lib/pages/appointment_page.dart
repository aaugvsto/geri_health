import 'package:flutter/material.dart';
import 'package:geri_health/models/appointment.dart';
import 'package:geri_health/widgets/list_appointment.dart';

class AppointmentPage extends StatelessWidget {
  const AppointmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListAppointment(
      appointmentList: [
        Appointment(
            doctor: 'Teste',
            locale: 'Teste',
            dateTime: DateTime.now(),
            type: 'Teste')
      ],
    );
  }
}
