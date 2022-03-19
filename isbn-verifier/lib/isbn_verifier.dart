bool isValid(String s) {
  if (s.length != 13 && s.length != 10) {
    return false;
  }

  int sum = 0;
  int multiplier = 10;
  for (int i = 0; i < s.length; i++) {
    if (s[i] == '-') {
      // skip the dash
    } else if (s[i] == 'X' && i == s.length - 1) {
      sum += 10 * multiplier;
      multiplier--;
    } else {
      var parsed = int.tryParse(s[i]);
      if (parsed == null) {
        return false;
      }

      sum += parsed * multiplier;
      multiplier--;
    }
  }

  return sum % 11 == 0;
}

void main() {
  isValid('3-598-21508-8');
}
