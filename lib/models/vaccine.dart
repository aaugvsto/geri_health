import '../enums/enums.dart';

class Vaccine {
  DateTime date;
  String name;
  String manufacturer;
  Dose dose;

  Vaccine({
    required this.name,
    required this.manufacturer,
    required this.date,
    required this.dose,
  });
}
