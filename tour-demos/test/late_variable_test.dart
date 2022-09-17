import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

late String description;
void main() {
  setUp(() {
    description = "initialized";
  });
  test("late variable", () {
    expect(description, "initialized");
  });
}
