import 'package:test/test.dart';

void main() {
  test('var', () {
    var name = 'Bob';
    expect(name, 'Bob');
    expect(name.runtimeType, String);
  });
  test('Object', () {
    Object name = 'Bob';
    expect(name, 'Bob');
    expect(name.runtimeType, String);
  });
  test('String', () {
    String name = 'Bob';
    expect(name, 'Bob');
    expect(name.runtimeType, String);
  });
}
