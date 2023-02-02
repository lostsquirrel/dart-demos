import 'package:test/test.dart';

late String description;
void main() {
  setUp(() {
    description = "initialized";
  });
  test("late variable", () {
    expect(description, "initialized");
  });
}
