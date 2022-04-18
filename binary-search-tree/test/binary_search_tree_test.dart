import 'package:binary_search_tree/binary_search_tree.dart';
import 'package:binary_search_tree/binary_search_tree_2.dart';
import 'package:binary_search_tree/binary_search_tree_3.dart';
import 'package:binary_search_tree/models/node.dart';
import 'package:test/test.dart';

void main() {
  group('BinarySearchTree', () {
    test('data is retained', () {
      final bst = BinarySearchTree('4');

      expect(bst.root?.data, equals('4'));
    }, skip: false);

    // group('debug', () {
    //   test('print small tree', (() {
    //     final bst = BinarySearchTree('4');
    //     bst.insert('2');
    //     bst.insert('6');

    //     var result = bst.printVisualTree();

    //     expect(result[0], equals('       4'));
    //     expect(result[1], equals('     /   \\'));
    //     expect(result[2], equals('    /     \\'));
    //     expect(result[3], equals('   2       6'));
    //   }));
    // });

    group('insert data at proper node', () {
      test('smaller number at left node', () {
        final bst = BinarySearchTree('4')..insert('2');

        expect(bst.root?.data, equals('4'));
        expect(bst.root?.left?.data, equals('2'));
      }, skip: false);

      test('same number at left node', () {
        final bst = BinarySearchTree('4')..insert('4');

        expect(bst.root?.data, equals('4'));
        expect(bst.root?.left?.data, equals('4'));
      }, skip: false);

      test('greater number at right node', () {
        final bst = BinarySearchTree('4')..insert('5');

        expect(bst.root?.data, equals('4'));
        expect(bst.root?.right?.data, equals('5'));
      }, skip: false);

      test('can create complex tree', () {
        final bst = BinarySearchTree('4')
          ..insert('2')
          ..insert("6")
          ..insert("1")
          ..insert("3")
          ..insert("5")
          ..insert("7");

        expect(bst.root?.data, equals('4'));

        expect(bst.root?.left?.data, equals('2'));
        expect(bst.root?.left?.left?.data, equals('1'));
        expect(bst.root?.left?.right?.data, equals('3'));

        expect(bst.root?.right?.data, equals('6'));
        expect(bst.root?.right?.left?.data, equals('5'));
        expect(bst.root?.right?.right?.data, equals('7'));
      }, skip: false);
    });

    group('can sort data', () {
      test('can sort single number', () {
        final bst = BinarySearchTree('2');

        expect(bst.sortedData, equals(['2']));
      }, skip: false);

      test('can sort if second number is smaller than first', () {
        final bst = BinarySearchTree('2')..insert('1');

        expect(bst.sortedData, equals(['1', '2']));
      }, skip: false);

      test('can sort if second number is same as first', () {
        final bst = BinarySearchTree('2')..insert('2');

        expect(bst.sortedData, equals(['2', '2']));
      }, skip: false);

      test('can sort if second number is greater than first', () {
        final bst = BinarySearchTree('2')..insert('3');

        expect(bst.sortedData, equals(['2', '3']));
      }, skip: false);

      test('can sort complex tree', () {
        final bst = BinarySearchTree('2')
          ..insert("1")
          ..insert("3")
          ..insert("6")
          ..insert("7")
          ..insert("5");

        expect(bst.sortedData, equals(['1', '2', '3', '5', '6', '7']));
      }, skip: false);
    });
  });

  group('BinarySearchTree2', () {
    test('data is retained', () {
      final bst = BinarySearchTree2([4]);

      expect(bst.root?.value, equals(4));
    }, skip: false);

    group('debug', () {
      test('print small tree', (() {
        final bst = BinarySearchTree2([4]);
        bst.insert(2);
        bst.insert(6);

        var result = bst.printVisualTree();

        expect(result[0], equals('       4'));
        expect(result[1], equals('     /   \\'));
        expect(result[2], equals('    /     \\'));
        expect(result[3], equals('   2       6'));
      }));
    });

    group('insert data at proper node', () {
      test('smaller number at left node', () {
        final bst = BinarySearchTree2([4])..insert(2);

        expect(bst.root?.value, equals(4));
        expect(bst.root?.left?.value, equals(2));
      }, skip: false);

      test('same number at left node', () {
        final bst = BinarySearchTree2([4])..insertList([4]);

        expect(bst.root?.value, equals(4));
        expect(bst.root?.left?.value, equals(4));
      }, skip: false);

      test('greater number at right node', () {
        final bst = BinarySearchTree2([4])..insert(5);

        expect(bst.root?.value, equals(4));
        expect(bst.root?.right?.value, equals(5));
      }, skip: false);

      test('can create complex tree', () {
        final bst = BinarySearchTree2([4])
          ..insert(2)
          ..insert(6)
          ..insert(1)
          ..insert(3)
          ..insert(5)
          ..insert(7);

        expect(bst.root?.value, equals(4));

        expect(bst.root?.left?.value, equals(2));
        expect(bst.root?.left?.left?.value, equals(1));
        expect(bst.root?.left?.right?.value, equals(3));

        expect(bst.root?.right?.value, equals(6));
        expect(bst.root?.right?.left?.value, equals(5));
        expect(bst.root?.right?.right?.value, equals(7));
      }, skip: false);

      test('can create complex tree with double', () {
        final bst = BinarySearchTree2([4])
          ..insert(2.1)
          ..insert(6)
          ..insert(1)
          ..insert(3.5)
          ..insert(5)
          ..insert(7);

        expect(bst.root?.value, equals(4));

        expect(bst.root?.left?.value, equals(2.1));
        expect(bst.root?.left?.left?.value, equals(1));
        expect(bst.root?.left?.right?.value, equals(3.5));

        expect(bst.root?.right?.value, equals(6));
        expect(bst.root?.right?.left?.value, equals(5));
        expect(bst.root?.right?.right?.value, equals(7));
      }, skip: false);
    });

    group('can sort data', () {
      test('can sort single number', () {
        final bst = BinarySearchTree2([2]);

        expect(bst.sortedData, equals([2]));
      }, skip: false);

      test('can sort if second number is smaller than first', () {
        final bst = BinarySearchTree2([2])..insert(1);

        expect(bst.sortedData, equals([1, 2]));
      }, skip: false);

      test('can sort if second number is same as first', () {
        final bst = BinarySearchTree2([2])..insert(2);

        expect(bst.sortedData, equals([2, 2]));
      }, skip: false);

      test('can sort if second number is greater than first', () {
        final bst = BinarySearchTree2([2])..insert(3);

        expect(bst.sortedData, equals([2, 3]));
      }, skip: false);

      test('can sort complex tree', () {
        final bst = BinarySearchTree2([2])
          ..insert(1)
          ..insert(3)
          ..insert(6)
          ..insert(7)
          ..insert(5);

        expect(bst.sortedData, equals([1, 2, 3, 5, 6, 7]));
      }, skip: false);
    });
  });

  group('BinarySearchTree3', () {
    group('can find node', () {
      test('can find data node in tree', () {
        var dataNode = new DataNode(1);
        dataNode.data = 'data123';

        var bst = BinarySearchTree3()
          ..insert(new Node(2))
          ..insert(new Node(6))
          ..insert(dataNode)
          ..insert(new Node(3))
          ..insert(new Node(5))
          ..insert(new Node(7));

        var find = bst.find(1);
        expect("data123", find.data);

        // expect(bst.find(2), equals(bst.root?.left));
        // expect(bst.find(6), equals(bst.root?.right));
        // expect(bst.find(1), equals(bst.root?.left?.left));
        // expect(bst.find(3), equals(bst.root?.left?.right));
        // expect(bst.find(5), equals(bst.root?.right?.left));
        // expect(bst.find(7), equals(bst.root?.right?.right));
      }, skip: false);
    });
  });
}
