import 'package:flutter/material.dart';
import 'package:geri_health/models/appointment.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class ListAppointment extends StatefulWidget {
  List<Appointment> appointmentList;
  dynamic onTap;

  ListAppointment({Key? key, required this.appointmentList, this.onTap})
      : super(key: key);

  @override
  State<ListAppointment> createState() => _ListAppointmentState();
}

class _ListAppointmentState extends State<ListAppointment> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
      child: ListView(
        shrinkWrap: true,
        // ignore: unused_local_variable
        children: <Widget>[
          const Center(
            child: Text(
              'Minhas Consultas',
              style: TextStyle(fontSize: 25),
            ),
          ),
          const SizedBox(height: 20),
          for (Appointment appointment in widget.appointmentList)
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Card(
                color: Colors.teal,
                elevation: 5,
                margin: EdgeInsets.zero,
                child: ListTile(
                  leading: const Icon(
                    Icons.calendar_month_outlined,
                    size: 56,
                    color: Colors.white,
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Text(
                      appointment.type,
                      style: const TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        appointment.doctor,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      const Text(
                        ' - ',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        DateFormat('dd/MM/yyyy').format(appointment.dateTime),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  trailing: const Icon(
                    Icons.info,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
