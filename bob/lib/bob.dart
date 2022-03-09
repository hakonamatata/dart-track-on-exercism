class Bob {
  String response(String s) {
    return s.trim().isEmpty
        ? "Fine. Be that way!"
        : s.trim().endsWith("?") && s.trim().toUpperCase() == s && parseString(s).length > 1
            ? "Calm down, I know what I'm doing!"
            : s.trim().endsWith("?")
                ? "Sure."
                : s.trim().toUpperCase() == s && parseString(s).length > 1
                    ? "Whoa, chill out!"
                    : "Whatever.";
  }

  String parseString(String s) {
    RegExp exp = RegExp(r"[^a-zA-Z?!]");
    return s.trim().replaceAll(exp, '');
  }
}
