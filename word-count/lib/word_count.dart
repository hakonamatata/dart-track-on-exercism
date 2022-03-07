class WordCount {
  Map<String, int> countWords(String s) {
    Map<String, int> result = new Map<String, int>();

    RegExp exp = RegExp(r"[^a-z0-9,'\\ ]");
    var split = s.toLowerCase().replaceAll(exp, '').replaceAll(' ', ',').split(",");

    for (var i = 0; i < split.length; i++) {
      var word = parseWord(split[i]);

      if (result.containsKey(word)) {
        var current = result[word] ?? 1;
        result[word] = current + 1;
      } else if (word.isNotEmpty) {
        result[word] = 1;
      }
    }

    return result;
  }

  String parseWord(String word) {
    // remove ' from start of word
    if (word.length > 2 && word.substring(0, 1) == '\'') {
      word = word.substring(1);
    }

    // remove ' from end of word
    if (word.length > 1 && word.substring(word.length - 1) == '\'') {
      word = word.substring(0, word.length - 1);
    }

    return word;
  }
}
