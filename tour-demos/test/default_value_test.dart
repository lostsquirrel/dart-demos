import 'package:test/test.dart';
import 'package:tour_demos/tour_demos.dart';

void main() {
  test('nullable', () {
    int? i;
    expect(i, null);
  });
  test('normal', () {
    int i = 0;
    expect(i, 0);
  });
  test('not nullable', () {
    int i;
    i = mockInt();
    expect(i, 42);
  });

  test("default null value", () {
    int? lineCount;
    assert(lineCount == null);
  });
  test("default literal value", () {
    int lineCount = 0;
    assert(lineCount == 0);
  });
  test("default asign value", () {
    int lineCount;

    bool weLikeToCount = randomBool();
    if (weLikeToCount) {
      lineCount = countLines();
    } else {
      lineCount = 0;
    }

    print(lineCount);
  });
}
