class BinarySearchTree {
  Node? root;
  var sortedData = "";

  BinarySearchTree(String s) {
    insert(s);
    sort();
  }

  void sort() {
    sortedData = "";
    inOrder(root!);
  }

  String inOrder(Node? x) {
    if (x != null) {
      inOrder(x.left);
      print(x.data);
      sortedData += x.data.toString();
      inOrder(x.right);
    }

    return sortedData;
  }

  void insert(String s) {
    for (int i = 0; i < s.length; i++) {
      insertSingleNumber(int.parse(s[i]));
    }
  }

  void insertSingleNumber(int s) {
    Node? y = null;
    var x = root;

    while (x != null) {
      y = x;
      if (s < x.data) {
        x = x.left;
      } else {
        x = x.right;
      }
    }

    if (y == null) {
      root = Node(s);
    } else if (s < y.data) {
      y.left = Node(s);
    } else {
      y.right = Node(s);
    }
  }
}

class Node {
  int data;
  Node? left;
  Node? right;

  Node(this.data) {}
}

void main() {
  BinarySearchTree bst = BinarySearchTree('4');
  bst.insert('2');
  bst.insert('6');
  bst.insert('1');
  bst.insert('3');
  bst.insert('5');
  bst.insert('7');

  bst.sort();

  print(bst.sortedData);
}
