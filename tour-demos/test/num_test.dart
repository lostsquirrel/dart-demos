import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test("int", () {
    var x = 1;
    expect(x.runtimeType, int);
  });
  test("hex", () {
    var hex = 0xdeadbeef;
    expect(hex.runtimeType, int);
  });

  test("double", () {
    var y = 1.1;
    expect(y.runtimeType, double);
  });

  test("exponents", () {
    var e = 1.42e5;
    expect(e.runtimeType, double);
  });

  test("double convert", () {
    double z = 1;
    expect(z.runtimeType, double);
  });

  test("num", () {
    num n = 1;
    expect(n.runtimeType, int);
    n += 2.5;
    expect(n, 3.5);
    expect(n.runtimeType, double);
  });

  test("String to int", () {
    var one = int.parse('1');
    expect(one, 1);
  });
  test("String to double", () {
    var one = double.parse('1.1');
    expect(one, 1.1);
  });

  test("int to String", () {
    var x = 1.toString();
    expect(x, '1');
  });

  test("double to fixed String", () {
    var x = 3.14159.toStringAsFixed(2);
    expect(x, '3.14');
  });

  test("left shift", () {
    expect(3 << 1, 6);
  });

  test("bit or", () {
    expect(3 | 4, 7);
  });

  test("bit and", () {
    expect(3 & 4, 0);
  });

  test("arithmetic constant", () {
    const msPerSecond = 1000;
    const secondsUnitlRetry = 5;
    const msUnitlRetry = secondsUnitlRetry * msPerSecond;
    print(msUnitlRetry);
  });
}
