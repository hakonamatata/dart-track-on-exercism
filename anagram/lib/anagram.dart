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

      Map<String, int> usedCharacters = HashMap(); // Is a HashMap
      for (var i = 0; i < s.length; i++) {
        var currentChar = s[i].toLowerCase();
        if (usedCharacters.containsKey(currentChar)) {
          var count = usedCharacters[currentChar] ?? 1; // pointless nullcheck, will never be null
          usedCharacters[currentChar] = count + 1;
        } else {
          usedCharacters[currentChar] = 1;
        }
      }

      var isAnagram = true;
      for (var j = 0; j < s.length; j++) {
        var currentChar = list[i][j].toLowerCase();

        if (usedCharacters.containsKey(currentChar)) {
          var count = usedCharacters[currentChar] ?? 1; // pointless nullcheck, will never be null
          usedCharacters[currentChar] = count - 1;
        } else {
          usedCharacters[currentChar] = -1;
          isAnagram = false;
          break;
        }
      }

      // each char in usedCharacters should be 0, if not, all letters are not used exactly once and
      // therefore it is not a real anagram
      if (isAnagram && usedCharacters.values.every((v) => v == 0)) {
        result.add(list[i]);
      }
    }

    return result;
  }
}
