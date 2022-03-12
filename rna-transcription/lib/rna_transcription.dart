class RnaTranscription {
  String toRna(String s) {
    var rna = new StringBuffer();

    for (var i = 0; i < s.length; i++) {
      switch (s[i]) {
        case 'G':
          rna.write('C');
          break;
        case 'C':
          rna.write('G');
          break;
        case 'T':
          rna.write('A');
          break;
        case 'A':
          rna.write('U');
          break;
        default:
          throw new ArgumentError('Invalid input');
      }
    }

    return rna.toString();
  }
}
