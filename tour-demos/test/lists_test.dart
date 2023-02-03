import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:tour_demos/tour_demos.dart';

void main() {
  test("first list", () {
    var x = [1, 2, 3];
    print(x.runtimeType);
    expect(x.runtimeType, List<int>);
  });

  test("string list", () {
    var list = [
      'Car',
      'Boat',
      'Plane',
    ];
    expect(list.runtimeType, List<String>);
  });

  test("list op", () {
    var list = [1, 2, 3];
    expect(list.length, 3);
    expect(list[1], 2);
    list[1] = 1;
    expect(list[1], 1);
  });

  test("const list", () {
    var constantList = const [1, 2, 3];

    expect(() => constantList[1] = 1, throwsUnsupportedError);
  });

  test("list spread", () {
    var list = [1, 2, 3];
    var list2 = [0, ...list];
    expect(list2.length, 4);
  });

  test("list null-aware spread", () {
    List<int>? list;
    var list2 = [0, ...?list];
    expect(list2.length, 1);
  });

  test("collection if", () {
    var promoActive = randomBool();
    var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
    print(nav);
  });

  test("collection for", () {
    var listOfInts = [1, 2, 3];
    var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
    expect(listOfStrings[1], '#1');
  });
}
