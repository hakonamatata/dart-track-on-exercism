class Leap {
  bool isDivisableBy(int number, int divisor) {
    return number % divisor == 0;
  }

  bool leapYear(int i) {
    return isDivisableBy(i, 4) && !isDivisableBy(i, 100) || isDivisableBy(i, 400);
  }
}
