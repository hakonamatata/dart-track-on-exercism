import 'dart:collection';

class Anagram {
  List<String> findAnagrams(String s, List<String> list) {
    List<String> result = [];

    for (var i = 0; i < list.length; i++) {
      if (list[i].length != s.length) {
        continue;
      }

      // can not be anogram of itself
      if (list[i].toLowerCase() == s.toLowerCase()) {
        continue;
      }

      Map<String, int> usedCharacters = HashMap();
      for (var i = 0; i < s.length; i++) {
        var currentChar = s[i].toLowerCase();
        usedCharacters.update(currentChar, (value) => value + 1, ifAbsent: () => 1);
      }

      for (var j = 0; j < s.length; j++) {
        var currentChar = list[i][j].toLowerCase();
        usedCharacters.update(currentChar, (value) => value - 1, ifAbsent: () => -1);
      }

      // each char in usedCharacters should be 0, if not, all letters are not used exactly once and
      // therefore it is not a real anagram
      if (usedCharacters.values.every((v) => v == 0)) {
        result.add(list[i]);
      }
    }

    return result;
  }
}
