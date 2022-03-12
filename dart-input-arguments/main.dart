import 'dart:io';

void main(List<String> args) {
  String? a = stdin.readLineSync();
  String? b = stdin.readLineSync();

  if (a == null || b == null) {
    print('null');
    return;
  }

  stdout.writeln(int.parse(a) + int.parse(b));
}
