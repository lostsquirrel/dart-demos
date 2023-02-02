import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test("check empty string", () {
    var fullName = '';
    expect(fullName.isEmpty, true);
  });

  test("check for zero", () {
    var hitPoints = 0;
    expect(hitPoints <= 0, true);
  });
  test("check for null", () {
    int? unicorn;
    expect(unicorn == null, true);
  });

  test("check for NaN", () {
    var iMeantToDoThis = 0 / 0;
    expect(iMeantToDoThis.isNaN, true);
  });
}
