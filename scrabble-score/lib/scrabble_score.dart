import 'dart:collection';

int score(String s) {
  Map<String, int> characterValue = HashMap();
  characterValue.addEntries([
    MapEntry('a', 1),
    MapEntry('b', 1),
    MapEntry('c', 1),
    MapEntry('d', 1),
    MapEntry('f', 4),
    MapEntry('e', 1),
    MapEntry('g', 2),
    MapEntry('h', 2),
    MapEntry('i', 1),
    MapEntry('j', 8),
    MapEntry('k', 5),
    MapEntry('l', 1),
    MapEntry('m', 3),
    MapEntry('n', 1),
    MapEntry('o', 1),
    MapEntry('p', 3),
    MapEntry('q', 10),
    MapEntry('r', 1),
    MapEntry('s', 1),
    MapEntry('t', 1),
    MapEntry('u', 1),
    MapEntry('v', 4),
    MapEntry('w', 4),
    MapEntry('x', 8),
    MapEntry('y', 4),
    MapEntry('z', 10),
  ]);

  int sum = 0;
  for (var i = 0; i < s.length; i++) {
    sum += characterValue[s[i].toLowerCase()] as int;
  }

  return sum;
}
