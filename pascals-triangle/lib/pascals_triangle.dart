class PascalsTriangle {
  List<List<int>> rows(int rows) {
    List<List<int>> triangle = List.filled(0, [], growable: true);

    for (var i = 0; i < rows; i++) {
      List<int> row = List.filled(0, 0, growable: true);
      for (var j = 0; j <= i; j++) {
        if (j == 0 || j == i) {
          row.add(1);
        } else {
          row.add(triangle[i - 1][j - 1] + triangle[i - 1][j]);
        }
      }
      triangle.add(row);
    }

    return triangle;
  }
}

void main() {
  PascalsTriangle triangle = PascalsTriangle();
  print(triangle.rows(5));
}
