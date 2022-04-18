import 'dart:math';

import 'models/node.dart';

class BinarySearchTree2 {
  Node? root;
  var _sortedData = <num>[];

  List<num> get sortedData {
    sort();
    return _sortedData;
  }

  BinarySearchTree2(List<num> array) {
    insertList(array);
  }

  void sort() {
    _sortedData.clear();
    inOrderTraversal(root!);
  }

  List<String> printVisualTree() {
    var rows = <String>[];

    rows.add('       ${root?.value}');
    rows.add('     /   \\');
    rows.add('    /     \\');
    rows.add('   ${root?.left?.value}       ${root?.right?.value}');

    var buffer = StringBuffer();
    buffer.writeAll(rows, '\n');

    print(buffer.toString());

    return rows;
    // for (var i = 0; i < levels; i++) {}

    // TODO: print like this:
    //       4
    //     /   \
    //    /     \
    //   2       6
    //  / \     / \
    // 1   3   5   7
  }

  void inOrderTraversal(Node? node) {
    if (node != null) {
      inOrderTraversal(node.left);
      _sortedData.add(node.value);
      inOrderTraversal(node.right);
    }
  }

  void insertList(List<num> list) {
    for (int i = 0; i < list.length; i++) {
      insert(list[i]);
    }
  }

  void insert(num value) {
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
  BinarySearchTree2 bst = BinarySearchTree2([4]);
  bst.insert(2.687564);
  bst.insert(6.234);
  bst.insert(1.8435);
  bst.insert(3.123);
  bst.insert(5.678);
  bst.insert(7.123);

  for (var i = 0; i < 100000; i++) {
    bst.insert(Random().nextDouble());
  }

  // bst.printVisualTree();

  print(bst.sortedData);

  // print(bst.root);
}
