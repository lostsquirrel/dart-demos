import 'package:test/test.dart';

Function makeAdder(int addBy) {
  return (int i) => addBy + i;
}

void main() {
  // Create a function that adds 2.
  var add2 = makeAdder(2);

  // Create a function that adds 4.
  var add4 = makeAdder(4);

  test("lexical closure", () {
    expect(add2(3), 5);
    expect(add4(3), 7);
  });
}
