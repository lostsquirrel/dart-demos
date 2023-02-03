import 'package:test/test.dart';

void main() {
  test("map literal", () {
    var gifts = {
      // Key:    Value
      'first': 'partridge',
      'second': 'turtledoves',
      'fifth': 'golden rings'
    };
    print(gifts.runtimeType);
    // print(_InternalLinkedHashMap<String, String> );
    // expect(gifts.runtimeType is Map<String, String>, true);
    var nobleGases = {
      2: 'helium',
      10: 'neon',
      18: 'argon',
    };
    print(nobleGases.runtimeType);
  });

  test("map constructor", () {
    var gifts = Map<String, String>();
    gifts['first'] = 'partridge';
    gifts['second'] = 'turtledoves';
    gifts['fifth'] = 'golden rings';
    print(gifts);
    var nobleGases = Map<int, String>();
    nobleGases[2] = 'helium';
    nobleGases[10] = 'neon';
    nobleGases[18] = 'argon';
    print(nobleGases);
  });

  test("map add", () {
    var gifts = {'first': 'partridge'};
    gifts['fourth'] = 'calling birds'; // Add a key-value pair
    expect(gifts['fourth'], 'calling birds');
  });

  test("map get from not exists key", () {
    var gifts = {'first': 'partridge'};
    expect(gifts['fifth'] == null, true);
  });

  test("map length", () {
    var gifts = {'first': 'partridge'};
    gifts['fourth'] = 'calling birds';
    assert(gifts.length == 2);
  });

  test("map const", () {
    final constantMap = const {
      2: 'helium',
      10: 'neon',
      18: 'argon',
    };
    expect(() => constantMap[2] = 'Helium', throwsUnsupportedError);
  });
}
