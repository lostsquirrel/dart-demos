import 'package:test/test.dart';

void main() {
  test("symbol test", () {
    var x = "123";

    var y = #x;
    expect(x, "123");
    // expect(y.runtimeType == Symbol, true);
    print(y.runtimeType);
    print(Symbol == Symbol);
  });
}
