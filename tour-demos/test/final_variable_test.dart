import 'package:test/test.dart';

void main() {
  test("final without type", () {
    final name = 'Bob'; // Without a type annotation
    expect(name, 'Bob');
  });

  test("final", () {
    final String nickname = 'Bobby';
    expect(nickname, 'Bobby');
  });
}
