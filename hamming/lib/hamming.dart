class Hamming {
  int distance(String s, String t) {
    if (s.isEmpty && !t.isEmpty || t.isEmpty && !s.isEmpty) {
      throw ArgumentError('no strand must be empty');
    }

    if (s.length != t.length) {
      throw ArgumentError('left and right strands must be of equal length');
    }

    var distance = 0;
    for (var i = 0; i < s.length; i++) {
      if (s[i] != t[i]) {
        distance++;
      }
    }

    return distance;
  }
}
