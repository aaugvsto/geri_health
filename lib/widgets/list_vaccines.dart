import 'package:flutter/material.dart';
import '../models/vaccine.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class ListVaccines extends StatefulWidget {
  List<Vaccine> vaccinesList;
  dynamic onTap;

  ListVaccines({Key? key, required this.vaccinesList, this.onTap})
      : super(key: key);

  @override
  State<ListVaccines> createState() => _ListVaccinesState();
}

class _ListVaccinesState extends State<ListVaccines> {
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
              'Minhas Vacinas',
              style: TextStyle(fontSize: 25),
            ),
          ),
          const SizedBox(height: 20),
          for (Vaccine vaccine in widget.vaccinesList)
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Card(
                color: Colors.lightBlue,
                elevation: 5,
                margin: EdgeInsets.zero,
                child: ListTile(
                  leading: const Icon(
                    Icons.vaccines,
                    size: 56,
                    color: Colors.white,
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Text(
                      vaccine.name,
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
                        vaccine.dose.message,
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
                        DateFormat('dd/MM/yyyy').format(vaccine.date),
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
