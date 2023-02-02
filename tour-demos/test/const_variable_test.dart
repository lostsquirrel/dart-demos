import 'package:test/test.dart';

void main() {
  test("const", () {
    const bar = 1000000; // Unit of pressure (dynes/cm2)
    const double atm = 1.01325 * bar; // Standard atmosphere
    expect(atm, 1013250);
  });

  test("const use type checks and cast", () {
    const Object i = 3; // Where i is a const Object with an int value...
    const list = [i as int]; // Use a typecast.
    expect(list[0], 3);
  });

  test("const use collection if", () {
    const Object i = 3;
    const map = {if (i is int) i: 'int'}; // Use is and collection if.
    expect(map[3], 'int');
  });

  test("const use spread operators", () {
    const Object i = 3;
    const list = [i];
    const set = {if (list is List<int>) ...list};
    expect(set.contains(3), true);
  });
}
