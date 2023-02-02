import 'package:test/test.dart';

void main() {
  test("String in multi lines", () {
    var s1 = 'String '
        'concatenation'
        ' works even over line breaks.';
    var s2 = 'String ' + 'concatenation' + ' works even over line breaks.';
    expect(s1, s2);
  });

  test("multi lines String", () {
    var s1 = '''You can create 
    multi-line strings like this one.
    ''';
    var s2 = 'You can create \n    multi-line strings like this one.\n    ';
    print(s2);
    expect(s1, s2);
  });

  test("raw string", () {
    var s1 = r'raw string \n \t \r';
    print(s1);
  });
}
