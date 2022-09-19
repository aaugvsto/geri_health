class Appointment {
  DateTime dateTime;
  String locale;
  String doctor;
  String type;

  Appointment({
    required this.doctor,
    required this.locale,
    required this.dateTime,
    required this.type,
  });
}
