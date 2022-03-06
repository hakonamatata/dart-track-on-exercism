import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(int number) {
    var total = number
        .toString()
        .split('')
        .map((digit) => pow(int.parse(digit), number.toString().length))
        .reduce((value, element) => value + element);

    return total == number;
  }
}
