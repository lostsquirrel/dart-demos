import 'package:test/test.dart';

import 'function_equality.dart';

void main() {
  test("func basic", () {
    bool isNoble(int atomicNumber) {
      return atomicNumber == 0;
    }

    print(isNoble);
  });

  test("omit the return type", () {
    isNoble2(int atomicNumber) {
      return atomicNumber == 0;
    }

    print(isNoble2);
  });

  test("express func", () {
    isNoble(int atomicNumber) => atomicNumber == 0 ? "no" : "yes";

    print(isNoble);
  });

  test("name parameters", () {
    void enableFlags({bool? bold, bool? hidden}) => print("$bold $hidden");
    print(enableFlags);

    enableFlags(bold: true, hidden: false);
    enableFlags();
  });

  test("parameter with default value", () {
    void enableFlags({bool bold = false, bool hidden = false}) =>
        print("$bold $hidden");
    enableFlags(bold: true);
    enableFlags();
  });

  test("name parameters", () {
    void enableFlags({required bool? bold, required bool? hidden}) =>
        print("$bold $hidden");

    enableFlags(bold: true, hidden: false);
  });

  test("optional parameter", () {
    String say(String from, String msg, [String? device]) {
      var result = '$from says $msg';
      if (device != null) {
        result = '$result with a $device';
      }
      return result;
    }

    expect(say('Bob', 'Howdy'), 'Bob says Howdy');
    expect(say('Bob', 'Howdy', 'smoke signal'),
        'Bob says Howdy with a smoke signal');
  });

  test("optional parameter with default value", () {
    String say(String from, String msg, [String device = 'carrier pigeon']) {
      var result = '$from says $msg with a $device';
      return result;
    }

    expect(say('Bob', 'Howdy'), 'Bob says Howdy with a carrier pigeon');
  });

  test("functiona as parameter", () {
    void printElement(int element) {
      print(element);
    }

    var list = [1, 2, 3];

// Pass printElement as a parameter.
    list.forEach(printElement);
  });

  test("assign function to variable", () {
    // ignore: prefer_function_declarations_over_variables
    var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';
    assert(loudify('hello') == '!!! HELLO !!!');
  });

  test("anonymous function", () {
    const list = ['apples', 'bananas', 'oranges'];
    list.map((item) {
      return item.toUpperCase();
    }).forEach((item) {
      print('$item: ${item.length}');
    });

    list
        .map((item) => item.toUpperCase())
        .forEach((item) => print('$item: ${item.length}'));
  });

  test("implicity return value", () {
    foo() {}
    expect(foo(), null);
  });
}
