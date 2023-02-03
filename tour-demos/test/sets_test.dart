import 'package:test/test.dart';

var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
void main() {
  test("set literal", () {
    expect(halogens.length, 5);
  });

  test("set empty", () {
    var names = <String>{};

    Set<String> names2 = {};
    expect(names, names2);
  });

  test("set add", () {
    var elements = <String>{};
    elements.add('fluorine');
    elements.addAll(halogens);
    expect(elements.length, 5);
  });

  test("set const", () {
    final constantSet = const {
      'fluorine',
      'chlorine',
      'bromine',
      'iodine',
      'astatine',
    };
    expect(() => constantSet.add("error"), throwsUnsupportedError);
  });
}
