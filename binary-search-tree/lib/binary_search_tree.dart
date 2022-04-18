import 'models/node.dart';

class BinarySearchTree {
  Node? root;
  var _sortedData = <String>[];

  List<String> get sortedData {
    sort();
    return _sortedData;
  }

  BinarySearchTree(String s) {
    insert(s);
  }

  void sort() {
    _sortedData.clear();
    inOrderTraversal(root!);
  }

  void inOrderTraversal(Node? node) {
    if (node != null) {
      inOrderTraversal(node.left);
      _sortedData.add(node.value.toString());
      inOrderTraversal(node.right);
    }
  }

  void insert(String s) {
    for (int i = 0; i < s.length; i++) {
      insertSingleNumber(int.parse(s[i]));
    }
  }

  void insertSingleNumber(int value) {
    Node? y = null;
    var node = root;

    while (node != null) {
      y = node;

      if (value <= node.value) {
        node = node.left;
      } else {
        node = node.right;
      }
    }

    if (y == null) {
      root = Node(value);
    } else if (value <= y.value) {
      y.left = Node(value);
    } else {
      y.right = Node(value);
    }
  }
}

void main() {
  BinarySearchTree bst = BinarySearchTree('4');
  bst.insert('2');
  bst.insert('6');
  bst.insert('1');
  bst.insert('3');
  bst.insert('5');
  bst.insert('7');

  print(bst.sortedData);

  print(bst.root);
}
