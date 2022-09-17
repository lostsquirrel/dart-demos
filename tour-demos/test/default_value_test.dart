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
}
