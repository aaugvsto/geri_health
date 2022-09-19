// ignore: non_constant_identifier_names
enum Dose {
  // ignore: constant_identifier_names
  PRIMEIRA_DOSE(message: 'Primeira Dose'),
  // ignore: constant_identifier_names
  SEGUNDA_DOSE(message: 'Segunda Dose'),
  // ignore: constant_identifier_names
  REFORCO(message: 'Reforço'),
  // ignore: constant_identifier_names
  REVACINACAO(message: 'Revacinação'),
  // ignore: constant_identifier_names
  UNICA(message: 'Única'),
  // ignore: constant_identifier_names
  DOSE_INICIAL(message: 'Dose Inicial');

  const Dose({required this.message});

  final String message;
}
