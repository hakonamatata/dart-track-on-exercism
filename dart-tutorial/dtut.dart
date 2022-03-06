import 'dart:collection';
import 'dart:math';

void main() {
  print("hello world");

  var firstName = "Jan";
  String lastName = "Banan";

  dynamic anything = "string";

  anything = 123;

  String age = "32";

  print("the first name is ${firstName} and the last name is ${lastName}");

  print("action happens here ${2 * 2 + 5}");

  var list = <String>["Jan", "Banan", "Kiwi"];

  print(list);

  var list2 = List<int>.filled(4, 123, growable: true);
  list2.add(456);
  list2.add(43);

  print(list2);

  list2.sort();

  print(list2);

  var list3 = List<int>.generate(10, (i) => i * i);
  print(list3);

  var list4 = List<int>.generate(10, (i) => Random().nextInt(100));
  print(list4);

  list4.addAll([1, 10]);
  print(list4);

  var index = list4.indexOf(1);
  print(index);

  Map<String, int> characterValue = HashMap(); // Is a HashMap
  characterValue.putIfAbsent("a", () => 1);
  characterValue.putIfAbsent("b", () => 3);
  characterValue.putIfAbsent("c", () => 3);
  characterValue.putIfAbsent("d", () => 2);
  characterValue.putIfAbsent("e", () => 1);

  // A to T
  // for (var i = 0; i < 10; i++) {
  //   characterValue.putIfAbsent(String.fromCharCode(i + 97), () => 1);
  //   print(
  //       "${String.fromCharCode(i + 97)}, ${characterValue[String.fromCharCode(i + 97)]}");
  // }

  // // T to G
  // for (var i = 10; i < 12; i++) {
  //   characterValue.putIfAbsent(String.fromCharCode(i + 97), () => 2);
  //   print(
  //       "${String.fromCharCode(i + 97)}, ${characterValue[String.fromCharCode(i + 97)]}");
  // }

  print(characterValue);

  print(pow(5, 3));
}
