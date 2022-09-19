import 'package:flutter/material.dart';
import 'package:geri_health/enums/enums.dart';
import 'package:geri_health/widgets/list_vaccines.dart';

import '../models/vaccine.dart';

class VaccinesPage extends StatelessWidget {
  const VaccinesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListVaccines(vaccinesList: [
      Vaccine(
        name: 'Teste',
        manufacturer: 'Teste',
        date: DateTime.now(),
        dose: Dose.DOSE_INICIAL,
      ),
      Vaccine(
        name: 'Teste',
        manufacturer: 'Teste',
        date: DateTime.now(),
        dose: Dose.DOSE_INICIAL,
      ),
      Vaccine(
        name: 'Teste',
        manufacturer: 'Teste',
        date: DateTime.now(),
        dose: Dose.DOSE_INICIAL,
      ),
      Vaccine(
        name: 'Teste',
        manufacturer: 'Teste',
        date: DateTime.now(),
        dose: Dose.DOSE_INICIAL,
      ),
      Vaccine(
        name: 'Teste',
        manufacturer: 'Teste',
        date: DateTime.now(),
        dose: Dose.DOSE_INICIAL,
      ),
      Vaccine(
        name: 'Teste',
        manufacturer: 'Teste',
        date: DateTime.now(),
        dose: Dose.DOSE_INICIAL,
      ),
    ]);
  }
}
