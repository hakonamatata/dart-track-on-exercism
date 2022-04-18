import 'models/node.dart';

class BinarySearchTree3 {
  Node? root;
  var _sorted = <num>[];

  // TODO: create red and black binary search tree
  // TODO: add search
  // TODO: add delete
  // TODO: add min
  // TODO: add max
  // TODO: add predecessor
  // TODO: add successor

  List<num> get sorted {
    sort();
    return _sorted;
  }

  void sort() {
    _sorted.clear();
    inOrderTraversal(root!);
  }

  void inOrderTraversal(Node? node) {
    if (node != null) {
      inOrderTraversal(node.left);
      _sorted.add(node.value);
      inOrderTraversal(node.right);
    }
  }

  void insertList(List<Node> list) {
    for (int i = 0; i < list.length; i++) {
      insert(list[i]);
    }
  }

  void insert(Node newNode) {
    Node? y = null;
    Node? current = root;

    while (current != null) {
      y = current;

      if (newNode.value <= current.value) {
        current = current.left;
      } else {
        current = current.right;
      }
    }

    if (y == null) {
      root = newNode;
    } else if (newNode.value <= y.value) {
      y.left = newNode;
    } else {
      y.right = newNode;
    }
  }

  Node find(num value) {
    throw UnimplementedError();
  }
}

void main() {
  BinarySearchTree3 bst = BinarySearchTree3();
  bst.insert(new Node(4));
  bst.insert(new DataNode(2));
  bst.insert(new Node(6));

  var dataNode1 = new DataNode(1);
  dataNode1.data = 'data1';

  bst.insert(dataNode1);

  bst.insert(new DataNode(1.1));
  bst.insert(new Node(3));
  bst.insert(new DataNode(5.67));
  bst.insert(new DataNode(7.1));

  print(bst.sorted);

  print(bst.root);
}
