import 'dart:math';

DateTime add(final DateTime birthDate) {
  return birthDate.add(Duration(seconds: pow(10, 9) as int));
}

void main() {
  final DateTime birthDate = DateTime(1955, 1, 1);
  final DateTime futureDate = add(birthDate);
  print(futureDate);
}
