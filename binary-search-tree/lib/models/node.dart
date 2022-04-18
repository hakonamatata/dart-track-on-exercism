class DataNode extends Node {
  num value;
  String data = '';

  DataNode(this.value) : super(value);

  @override
  String toString() {
    var sb = StringBuffer();
    sb.write('value: $value');

    if (data.isNotEmpty) {
      sb.write(', data: $data');
    }

    sb.write(', children: [$left, $right]');

    return sb.toString();
  }
}

class Node {
  num value;
  Node? left;
  Node? right;
  Node? parent;

  String data = '';

  Node(this.value) {}

  @override
  String toString() {
    return "value: $value, children: [$left, $right]";
  }
}
