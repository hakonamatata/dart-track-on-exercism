import 'dart:math';

class DifferenceOfSquares {
  List<int> createSequence(int n) => List.generate(n, (i) => i + 1);

  int squareOfSum(int number) => pow(createSequence(number).reduce((value, element) => value + element), 2) as int;

  int sumOfSquares(int number) => createSequence(number).reduce((value, element) => value + pow(element, 2) as int);

  int differenceOfSquares(int i) => squareOfSum(i) - sumOfSquares(i);
}
